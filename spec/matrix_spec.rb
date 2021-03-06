# encoding: utf-8

require "prtc09"

# Conjunto de expectativas rspec Matrix

describe Prtc09::Matrix do
  
  # Antes de realizar cualquier expectativa, se realizan las siguientes órdenes
  
  before :all do
    
   # Definición del cero entero para las matrices densas
    
   class Enteros < Prtc09::Matrix_Densa
     def cero
	0
     end
    end
    
    # Definición del cero entero para las matrices dispersas
    
    class Enteros_dis < Prtc09::Matrix_Dispersa
      def cero
	 0
      end
    end
    
    # Definición del cero fraccionario para las matrices densas
    
    class Fraccionarios < Prtc09::Matrix_Densa
      def cero
	Prtc09::Fraccion.new(0,1)
      end
    end
    
     # Definición del cero fraccionario para las matrices dispersas
    
     class Fraccionarios_dis < Prtc09::Matrix_Dispersa
      def cero
	Prtc09::Fraccion.new(0,1)
      end
    end
    
    # Creación de dos matrices llenas de enteros (0)
    
    @matriz1 = Enteros.new(2,2)
    @matriz2 = Enteros.new(2,2)

    # Creación de dos matrices dispersas llenas de enteros (0)

    @matriz3 = Enteros_dis.new(2,2)
    @matriz4 = Enteros_dis.new(2,2)

    # Creación de dos matrices llenas de fracciones (0/1)

    @matriz5 = Fraccionarios.new(2,2)
    @matriz6 = Fraccionarios.new(2,2)

    # Creación de dos matrices dispersas llenas de fracciones (0/1)

    @matriz7 = Fraccionarios_dis.new(2,2)
    @matriz8 = Fraccionarios_dis.new(2,2)
  end
  
  
    # Expectativas
  
  
    # Comprueba que la suma de dos matrices da el resultado correcto
 
    it "Deben sumarse dos matrices de enteros" do
    
      @matriz1[0,0]=1
      @matriz1[0,1]=1
      @matriz1[1,0]=1
      @matriz1[1,1]=1
      
      @matriz2[0,0]=1
      @matriz2[0,1]=1
      @matriz2[1,0]=1
      @matriz2[1,1]=1
    
    @matrizsuma = Enteros.new(2,2)
    
    @matrizsuma[0, 0] = 2
    @matrizsuma[0, 1] = 2
    @matrizsuma[1, 0] = 2
    @matrizsuma[1, 1] = 2
    
        (@matriz1+@matriz2).should ==(@matrizsuma)
    
    end
    
    
    # Comprueba que la suma de dos matrices dispersas da el resultado correcto
    
    it "Deben sumarse dos matrices dispersas de enteros" do
      @matriz3[0,0]=1
      @matriz3[0,1]=0
      @matriz3[1,0]=0
      @matriz3[1,1]=0
      
      @matriz4[0,0]=1
      @matriz4[0,1]=0
      @matriz4[1,0]=0
      @matriz4[1,1]=0
      
      @matrizdsuma = Enteros_dis.new(2,2)

      @matrizdsuma[0,0]=2
      @matrizdsuma[0,1]=0
      @matrizdsuma[1,0]=0
      @matrizdsuma[1,1]=0
      
         (@matriz3+@matriz4).should ==(@matrizdsuma)

    end
    
    
    # Comprueba que la resta de dos matrices da el resultado correcto
    
    it "Deben restarse dos matrices de enteros" do
      
      @matriz1[0,0]=1
      @matriz1[0,1]=1
      @matriz1[1,0]=1
      @matriz1[1,1]=1
      
      @matriz2[0,0]=1
      @matriz2[0,1]=1
      @matriz2[1,0]=1
      @matriz2[1,1]=1
    
    @matrizres = Enteros.new(2,2)
    
    @matrizres[0, 0] = 0
    @matrizres[0, 1] = 0
    @matrizres[1, 0] = 0
    @matrizres[1, 1] = 0
    
        (@matriz1-@matriz2).should ==(@matrizres)
    
    end
    

    # Comprueba que la resta de dos matrices dispersas da un resultado correcto
    
    it "Deben restarse dos matrices dispersas de enteros" do
      @matriz3[0,0]=2
      @matriz3[0,1]=0
      @matriz3[1,0]=0
      @matriz3[1,1]=0
      
      @matriz4[0,0]=1
      @matriz4[0,1]=0
      @matriz4[1,0]=0
      @matriz4[1,1]=0
      
      @matrizdresta = Enteros_dis.new(2,2)

      @matrizdresta[0,0]=1
      @matrizdresta[0,1]=0
      @matrizdresta[1,0]=0
      @matrizdresta[1,1]=0
      
         (@matriz3-@matriz4).should eq(@matrizdresta)

    end
       
    
    # Comprueba que la multiplicacion de dos matrices de enteros da un resultado correcto
    
    it "Deben multiplicarse dos matrices de enteros" do
    
      @matriz1[0,0]=2
      @matriz1[0,1]=2
      @matriz1[1,0]=2
      @matriz1[1,1]=2
      
      @matriz2[0,0]=3
      @matriz2[0,1]=3
      @matriz2[1,0]=3
      @matriz2[1,1]=3
    
    @matrizmul = Enteros.new(2,2)
    
    @matrizmul[0, 0] = 12
    @matrizmul[0, 1] = 12
    @matrizmul[1, 0] = 12
    @matrizmul[1, 1] = 12
    
        (@matriz1*@matriz2).should ==(@matrizmul)
    
    end  
    
    
    # Comprueba que la multiplicacion de dos matrices dispersas de enteros da un resultado correcto
  
    it "Deben multiplicarse dos matrices dispersas de enteros" do
      
      @matriz3[0,0]=2
      @matriz3[0,1]=0
      @matriz3[1,0]=0
      @matriz3[1,1]=0
      
      @matriz4[0,0]=1
      @matriz4[0,1]=0
      @matriz4[1,0]=0
      @matriz4[1,1]=0
      
      @matrizdmul = Enteros_dis.new(2,2)

      @matrizdmul[0,0]=2
      @matrizdmul[0,1]=0
      @matrizdmul[1,0]=0
      @matrizdmul[1,1]=0
      
         (@matriz3*@matriz4).should ==(@matrizdmul)

    
    end  

    
    # Comprueba que la suma de dos matrices de fracciones da un resultado correcto
    
    it "Deben sumarse dos matrices de fracciones" do
    

      @matriz5[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz5[0,1]=Prtc09::Fraccion.new(1,1)
      @matriz5[1,0]=Prtc09::Fraccion.new(1,1)
      @matriz5[1,1]=Prtc09::Fraccion.new(1,1)
      
      @matriz6[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz6[0,1]=Prtc09::Fraccion.new(2,2)
      @matriz6[1,0]=Prtc09::Fraccion.new(2,2)
      @matriz6[1,1]=Prtc09::Fraccion.new(2,2)

    
      @matrizfsuma = Fraccionarios.new(2,2)
    
      @matrizfsuma[0, 0] = Prtc09::Fraccion.new(2,1)
      @matrizfsuma[0, 1] = Prtc09::Fraccion.new(2,1)
      @matrizfsuma[1, 0] = Prtc09::Fraccion.new(2,1)
      @matrizfsuma[1, 1] = Prtc09::Fraccion.new(2,1)
    
        (@matriz5+@matriz6).should ==(@matrizfsuma)
    
    end  
    
    
    # Comprueba que la resta de dos matrices de fracciones da un resultado correcto
    
    it "Deben restarse dos matrices de fracciones" do
    
      @matriz5[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz5[0,1]=Prtc09::Fraccion.new(2,2)
      @matriz5[1,0]=Prtc09::Fraccion.new(2,2)
      @matriz5[1,1]=Prtc09::Fraccion.new(2,2)
      
      @matriz6[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz6[0,1]=Prtc09::Fraccion.new(1,1)
      @matriz6[1,0]=Prtc09::Fraccion.new(1,1)
      @matriz6[1,1]=Prtc09::Fraccion.new(1,1)
    
      @matrizfres = Fraccionarios.new(2,2)
    
      @matrizfres[0, 0] = Prtc09::Fraccion.new(0,2)
      @matrizfres[0, 1] = Prtc09::Fraccion.new(0,2)
      @matrizfres[1, 0] = Prtc09::Fraccion.new(0,2)
      @matrizfres[1, 1] = Prtc09::Fraccion.new(0,2)
    
        (@matriz5-@matriz6).should ==(@matrizfres)
    
    end
    
    
    # Comprueba que la multiplicacion de dos matrices de fracciones da un resultado correcto
    
    it "Deben multiplicarse dos matrices de fracciones" do
    
      @matriz5[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz5[0,1]=Prtc09::Fraccion.new(2,2)
      @matriz5[1,0]=Prtc09::Fraccion.new(2,2)
      @matriz5[1,1]=Prtc09::Fraccion.new(2,2)
      
      @matriz6[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz6[0,1]=Prtc09::Fraccion.new(1,1)
      @matriz6[1,0]=Prtc09::Fraccion.new(1,1)
      @matriz6[1,1]=Prtc09::Fraccion.new(1,1)
    
      @matrizfmul = Fraccionarios.new(2,2)
    
      @matrizfmul[0, 0] = Prtc09::Fraccion.new(2,1)
      @matrizfmul[0, 1] = Prtc09::Fraccion.new(2,1)
      @matrizfmul[1, 0] = Prtc09::Fraccion.new(2,1)
      @matrizfmul[1, 1] = Prtc09::Fraccion.new(2,1)
    
        (@matriz5*@matriz6).should ==(@matrizfmul)
    
    end  

    
    # Comprueba que la suma de dos matrices dispersas de fracciones da un resultado correcto
    
    it "Deben sumarse dos matrices dispersas de fracciones" do
      
      @matriz7[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz7[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matriz8[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz8[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matrizdfsuma = Fraccionarios_dis.new(2,2)

      @matrizdfsuma[0,0]=Prtc09::Fraccion.new(2,1)
      @matrizdfsuma[0,1]=Prtc09::Fraccion.new(0,1)
      @matrizdfsuma[1,0]=Prtc09::Fraccion.new(0,1)
      @matrizdfsuma[1,1]=Prtc09::Fraccion.new(0,1)
      
         (@matriz7+@matriz8).should ==(@matrizdfsuma)
      
    end

    
    # Comprueba que la resta de dos matrices dispersas de fracciones da un resultado correcto
    
    it "Deben restarse dos matrices dispersas de fracciones" do
            
      @matriz7[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz7[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matriz8[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz8[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matrizdfresta = Fraccionarios_dis.new(2,2)

      @matrizdfresta[0,0]=Prtc09::Fraccion.new(0,2)
      @matrizdfresta[0,1]=Prtc09::Fraccion.new(0,1)
      @matrizdfresta[1,0]=Prtc09::Fraccion.new(0,1)
      @matrizdfresta[1,1]=Prtc09::Fraccion.new(0,1)
      
         (@matriz7-@matriz8).should ==(@matrizdfresta)

    end
    
    
    # Comprueba que la multiplicacion de dos matrices dispersas de fracciones da un resultado correcto

    it "Deben multiplicarse dos matrices dispersas de fracciones" do
              
      @matriz7[0,0]=Prtc09::Fraccion.new(2,2)
      @matriz7[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz7[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matriz8[0,0]=Prtc09::Fraccion.new(1,1)
      @matriz8[0,1]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,0]=Prtc09::Fraccion.new(0,1)
      @matriz8[1,1]=Prtc09::Fraccion.new(0,1)
      
      @matrizdfmul = Fraccionarios_dis.new(2,2)

      @matrizdfmul[0,0]=Prtc09::Fraccion.new(2,2)
      @matrizdfmul[0,1]=Prtc09::Fraccion.new(0,1)
      @matrizdfmul[1,0]=Prtc09::Fraccion.new(0,1)
      @matrizdfmul[1,1]=Prtc09::Fraccion.new(0,1)
      
         (@matriz7*@matriz8).should ==(@matrizdfmul)
      
    end
    
    
    # Comprueba que la suma entre una matriz densa y una dispersa da un resultado correcto
    
    it "Deben sumarse una matriz densa y una dispersa" do
      
          @matriz1[0,0] = 1
          @matriz1[0,1] = 1
          @matriz1[1,0] = 1
          @matriz1[1,1] = 1
      
          @matriz3[0,0] = 1
          @matriz3[0,1] = 0
          @matriz3[1,0] = 0
          @matriz3[1,1] = 0

	  @matrizsuma = Enteros.new(2,2)
      
	  @matrizsuma[0,0]=2
	  @matrizsuma[0,1]=1
	  @matrizsuma[1,0]=1
	  @matrizsuma[1,1]=1

	  (@matriz1+@matriz3).should ==(@matrizsuma)

    end
    
    
    # Comprueba que la resta entre una matriz densa y una dispersa da un resultado correcto
    
    it "Deben restarse una matriz densa y una dispersa" do
      
          @matriz1[0,0] = 1
          @matriz1[0,1] = 1
          @matriz1[1,0] = 1
          @matriz1[1,1] = 1
      
          @matriz3[0,0] = 1
          @matriz3[0,1] = 0
          @matriz3[1,0] = 0
          @matriz3[1,1] = 0

      @matrizresta = Enteros.new(2,2)
      
      @matrizresta[0,0]=0
      @matrizresta[0,1]=1
      @matrizresta[1,0]=1
      @matrizresta[1,1]=1

      (@matriz1-@matriz3).should ==(@matrizresta)

    end
    
    
    # Comprueba que la multiplicacion entre una matriz densa y una dispersa da un resultado correcto
    
    it "Deben multiplicarse una matriz densa y una dispersa" do
      
          @matriz1[0,0] = 1
          @matriz1[0,1] = 1
          @matriz1[1,0] = 1
          @matriz1[1,1] = 1
      
          @matriz3[0,0] = 1
          @matriz3[0,1] = 0
          @matriz3[1,0] = 0
          @matriz3[1,1] = 0

      @matrizmul = Enteros.new(2,2)
      
      @matrizmul[0,0]=1
      @matrizmul[0,1]=0
      @matrizmul[1,0]=0
      @matrizmul[1,1]=0

      (@matriz1*@matriz3).should ==(@matrizmul)

    end
    
    
    # Comprueba que la suma entre una matriz densa y una dispersa da un resultado correcto
    
    it "Deben sumarse una matriz densa de enteros y una dispersa de fracciones" do
    
     @matriz1[0,0] = 12
     @matriz1[0,1] = 6
     @matriz1[1,0] = 4
     @matriz1[1,1] = -9
    
     @matriz7[0,0] = Prtc09::Fraccion.new(12,7)
     @matriz7[0,1] = Prtc09::Fraccion.new(0,1)
     @matriz7[1,0] = Prtc09::Fraccion.new(3,2)
     @matriz7[1,1] = Prtc09::Fraccion.new(0,1)

     @mprueba = Fraccionarios.new(2,2)
     @mprueba[0,0]= Prtc09::Fraccion.new(96,7)
     @mprueba[0,1]= Prtc09::Fraccion.new(6,1)
     @mprueba[1,0]= Prtc09::Fraccion.new(11,2)
     @mprueba[1,1]= Prtc09::Fraccion.new(-9,1)
     
       (@matriz1+@matriz7).should ==(@mprueba)     
    end

    
    # Comprueba que la resta entre una matriz densa de enteros y una dispersa de fracciones da un resultado correcto
    
    it "Deben restarse una matriz densa de enteros y una dispersa de fracciones" do
    
     @matriz1[0,0] = 1
     @matriz1[0,1] = 6
     @matriz1[1,0] = 4
     @matriz1[1,1] = 9
    
     @matriz7[0,0] = Prtc09::Fraccion.new(1,7)
     @matriz7[0,1] = Prtc09::Fraccion.new(0,1)
     @matriz7[1,0] = Prtc09::Fraccion.new(2,1)
     @matriz7[1,1] = Prtc09::Fraccion.new(0,1)

     @mprueba = Fraccionarios.new(2,2)
     @mprueba[0,0]= Prtc09::Fraccion.new(6,7)
     @mprueba[0,1]= Prtc09::Fraccion.new(6,1)
     @mprueba[1,0]= Prtc09::Fraccion.new(2,1)
     @mprueba[1,1]= Prtc09::Fraccion.new(9,1)
     
       (@matriz1- @matriz7).should ==(@mprueba)     
    end
    
    
    # Comprueba que la multiplicacion entre una matriz densa de enteros y una dispersa de fracciones da un resultado correcto
    
    it "Deben multiplicarse una matriz densa de enteros y una dispersa de fracciones" do
    
     @matriz1[0,0] = 1
     @matriz1[0,1] = 6
     @matriz1[1,0] = 4
     @matriz1[1,1] = -2
    
     @matriz7[0,0] = Prtc09::Fraccion.new(2,7)
     @matriz7[0,1] = Prtc09::Fraccion.new(0,1)
     @matriz7[1,0] = Prtc09::Fraccion.new(3,2)
     @matriz7[1,1] = Prtc09::Fraccion.new(0,1)

     @mprueba = Fraccionarios.new(2,2)
     @mprueba[0,0]= Prtc09::Fraccion.new(65,7)
     @mprueba[0,1]= Prtc09::Fraccion.new(0,1)
     @mprueba[1,0]= Prtc09::Fraccion.new(3,1)
     @mprueba[1,1]= Prtc09::Fraccion.new(0,1)
     
       (@matriz1*@matriz7).should ==(@mprueba)     
    end
    
    
    # Comprueba que las funciones min y max devuelven el valor maximo y el mínimo de una matriz
    
    it "Minimo y máximo" do
      
     @matriz1[0,0] = 2
     @matriz1[0,1] = 1
     @matriz1[1,0] = 1
     @matriz1[1,1] = 0
     
     @matriz3[0,0] = 0
     @matriz3[0,1] = 0
     @matriz3[1,0] = 0
     @matriz3[1,1] = 3
     
     (@matriz1.min).should ==(@matriz1[1,1])
     (@matriz1.max).should ==(@matriz1[0,0])
     
     (@matriz3.min).should ==(@matriz3[0,1])
     (@matriz3.max).should ==(@matriz3[1,1])
    end
    
    # Esta expectativa pertenece a la modificación pedida en la práctica 11. 
    # Se comprueba que el metodo encontrar da como resultado el primer numero que cumple la condición especificada.
    
    it "Modificación (encontrar)" do
      
      @matrize = Enteros.new(3,3)

      @matrize[0,0]=1
      @matrize[0,1]=2
      @matrize[0,2]=3
      @matrize[1,0]=4
      @matrize[1,1]=5
      @matrize[1,2]=6
      @matrize[2,0]=7
      @matrize[2,1]=8
      @matrize[2,2]=9

      (@matrize.encontrar{|e| e*e >= 16}).should ==([1,0])
      
    end
    
    
    # Esta expectativa pertenece a la modificación pedida en la práctica 9. 
    # Se comprueba que las operaciones básicas entre una matriz densa de enteros y una matriz dispersa de fracciones dan resultados correctos.
    
    it "Operaciones de la modificacion" do
     @matriz1[0,0] = 1
     @matriz1[0,1] = 1
     @matriz1[1,0] = 1
     @matriz1[1,1] = 1
     
     @matriz7[0,0] = Prtc09::Fraccion.new(1,2)
     @matriz7[0,1] = Prtc09::Fraccion.new(0,1)
     @matriz7[1,0] = Prtc09::Fraccion.new(0,1)
     @matriz7[1,1] = Prtc09::Fraccion.new(0,1)
     
     @msuma = Fraccionarios.new(2,2)  
     @msuma[0,0] = Prtc09::Fraccion.new(3,2)
     @msuma[0,1] = Prtc09::Fraccion.new(1,1)
     @msuma[1,0] = Prtc09::Fraccion.new(1,1)
     @msuma[1,1] = Prtc09::Fraccion.new(1,1)
     
     @mresta = Fraccionarios.new(2,2)
     @mresta[0,0] = Prtc09::Fraccion.new(1,2)
     @mresta[0,1] = Prtc09::Fraccion.new(1,1)
     @mresta[1,0] = Prtc09::Fraccion.new(1,1)
     @mresta[1,1] = Prtc09::Fraccion.new(1,1)
     
     @mmul = Fraccionarios.new(2,2)
     @mmul[0,0] = Prtc09::Fraccion.new(1,2)
     @mmul[0,1] = Prtc09::Fraccion.new(0,1)
     @mmul[1,0] = Prtc09::Fraccion.new(0,1)
     @mmul[1,1] = Prtc09::Fraccion.new(0,1)
     
       (@matriz1+@matriz7).should ==(@msuma) 
       (@matriz1-@matriz7).should ==(@mresta)
      (@matriz1*@matriz7).should ==(@mmul)
      
    end
    
    it "Matrix DSL" do
      
      @ejemplo = Prtc09::MatrixDSL.new("suma") do 
	option "densa" 
	option "console"

	operand [[1,2,3],[4,5,6],[7,8,9]]  
	operand [[1,1,1],[1,1,1],[1,1,1]]  
      end
      
      puts ejemplo.to_m
      
    end
    
end
  
    
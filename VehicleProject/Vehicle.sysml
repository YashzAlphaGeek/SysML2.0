package 'Package Yashwanth' {
  import ScalarValues::*;
	part def Vehicle {
		private attribute length : ScalarValues::Real;
		private attribute weight : ScalarValues::Real;
	}
	part def Car specializes Vehicle{}
	part def Bike specializes Vehicle{}
	part def Train specializes Vehicle{}
}

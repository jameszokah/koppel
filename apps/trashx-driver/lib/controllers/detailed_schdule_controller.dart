// import 'package:hook_riverpod/hook_riverpod.dart';

// // create controller for detailed schedule using a statenotifier and also create a state class for the controller

// class DetailedScheduleController extends StateNotifier<DetailedScheduleState> {
//   DetailedScheduleController() : super(DetailedScheduleState(
//     schedule: null,
//     scheduleId: null,
//     scheduleStatus: null,
//     scheduleStatusId: null,
//     scheduleStatusName: null,
//     scheduleStatusDescription: null,
//     scheduleStatusColor: null,
//     scheduleStatusIcon: null,
//     scheduleStatusCreatedAt: null,
//     scheduleStatusUpdatedAt: null,
//     scheduleStatusDeletedAt: null,
//     scheduleStatusScheduleId: null,
//     scheduleStatusStatusId: null,
//     scheduleStatusStatusName: null,
//     scheduleStatusStatusDescription: null,
//     scheduleStatusStatusColor: null,
//     scheduleStatusStatusIcon: null,
//     scheduleStatusStatusCreatedAt: null,
//     scheduleStatusStatusUpdatedAt: null,
//   ));

//   void setSchedule(Schedule schedule) {
//     state = state.copyWith(schedule: schedule);
//   }

//   void setScheduleId(String scheduleId) {
//     state = state.copyWith(scheduleId: scheduleId);
//   }

//   void setScheduleStatus(ScheduleStatus scheduleStatus) {
//     state = state.copyWith(scheduleStatus: scheduleStatus);
//   }

//   void setScheduleStatusId(String scheduleStatusId) {
//     state = state.copyWith(scheduleStatusId: scheduleStatusId);
//   }

//   void setScheduleStatusName(String scheduleStatusName) {
//     state = state.copyWith(scheduleStatusName: scheduleStatusName);
//   }

//   void setScheduleStatusDescription(String scheduleStatusDescription) {
//     state =
//         state.copyWith(scheduleStatusDescription: scheduleStatusDescription);
//   }

//   void setScheduleStatusColor(String scheduleStatusColor) {
//     state = state.copyWith(scheduleStatusColor: scheduleStatusColor);
//   }

//   void setScheduleStatusIcon(String scheduleStatusIcon) {
//     state = state.copyWith(scheduleStatusIcon: scheduleStatusIcon);
//   }

//   void setScheduleStatusCreatedAt(String scheduleStatusCreatedAt) {
//     state = state.copyWith(scheduleStatusCreatedAt: scheduleStatusCreatedAt);
//   }

//   void setScheduleStatusUpdatedAt(String scheduleStatusUpdatedAt) {
//     state = state.copyWith(scheduleStatusUpdatedAt: scheduleStatusUpdatedAt);
//   }

//   void setScheduleStatusDeletedAt(String scheduleStatusDeletedAt) {
//     state = state.copyWith(scheduleStatusDeletedAt: scheduleStatusDeletedAt);
//   }

//   void setScheduleStatusScheduleId(String scheduleStatusScheduleId) {
//     state = state.copyWith(scheduleStatusScheduleId: scheduleStatusScheduleId);
//   }

//   void setScheduleStatusStatusId(String scheduleStatusStatusId) {
//     state = state.copyWith(scheduleStatusStatusId: scheduleStatusStatusId);
//   }

//   void setScheduleStatusStatusName(String scheduleStatusStatusName) {
//     state = state.copyWith(scheduleStatusStatusName: scheduleStatusStatusName);
//   }

//   void setScheduleStatusStatusDescription(
//       String scheduleStatusStatusDescription) {
//     state = state.copyWith(
//         scheduleStatusStatusDescription: scheduleStatusStatusDescription);
//   }

//   void setScheduleStatusStatusColor(String scheduleStatusStatusColor) {
//     state =
//         state.copyWith(scheduleStatusStatusColor: scheduleStatusStatusColor);
//   }

//   void setScheduleStatusStatusIcon(String scheduleStatusStatusIcon) {
//     state = state.copyWith(scheduleStatusStatusIcon: scheduleStatusStatusIcon);
//   }

//   void setScheduleStatusStatusCreatedAt(String scheduleStatusStatusCreatedAt) {
//     state = state.copyWith(
//         scheduleStatusStatusCreatedAt: scheduleStatusStatusCreatedAt);
//   }

//   void setScheduleStatusStatusUpdatedAt(String scheduleStatusStatusUpdatedAt) {
//     state = state.copyWith(
//         scheduleStatusStatusUpdatedAt: scheduleStatusStatusUpdatedAt);
//   }
// }

// // create a state class for the controller

// class DetailedScheduleState {
//   final Schedule? schedule;
//   final String? scheduleId;
//   final ScheduleStatus? scheduleStatus;
//   final String? scheduleStatusId;
//   final String? scheduleStatusName;
//   final String? scheduleStatusDescription;
//   final String? scheduleStatusColor;
//   final String? scheduleStatusIcon;
//   final String? scheduleStatusCreatedAt;
//   final String? scheduleStatusUpdatedAt;
//   final String? scheduleStatusDeletedAt;
//   final String? scheduleStatusScheduleId;
//   final String? scheduleStatusStatusId;
//   final String? scheduleStatusStatusName;
//   final String? scheduleStatusStatusDescription;
//   final String? scheduleStatusStatusColor;
//   final String? scheduleStatusStatusIcon;
//   final String? scheduleStatusStatusCreatedAt;
//   final String? scheduleStatusStatusUpdatedAt;

//   DetailedScheduleState({
//     this.schedule,
//     this.scheduleId,
//     this.scheduleStatus,
//     this.scheduleStatusId,
//     this.scheduleStatusName,
//     this.scheduleStatusDescription,
//     this.scheduleStatusColor,
//     this.scheduleStatusIcon,
//     this.scheduleStatusCreatedAt,
//     this.scheduleStatusUpdatedAt,
//     this.scheduleStatusDeletedAt,
//     this.scheduleStatusScheduleId,
//     this.scheduleStatusStatusId,
//     this.scheduleStatusStatusName,
//     this.scheduleStatusStatusDescription,
//     this.scheduleStatusStatusColor,
//     this.scheduleStatusStatusIcon,
//     this.scheduleStatusStatusCreatedAt,
//     this.scheduleStatusStatusUpdatedAt,
//   });

//   DetailedScheduleState copyWith({
//     Schedule? schedule,
//     String? scheduleId,
//     ScheduleStatus? scheduleStatus,
//     String? scheduleStatusId,
//     String? scheduleStatusName,
//     String? scheduleStatusDescription,
//     String? scheduleStatusColor,
//     String? scheduleStatusIcon,
//     String? scheduleStatusCreatedAt,
//     String? scheduleStatusUpdatedAt,
//     String? scheduleStatusDeletedAt,
//     String? scheduleStatusScheduleId,
//     String? scheduleStatusStatusId,
//     String? scheduleStatusStatusName,
//     String? scheduleStatusStatusDescription,
//     String? scheduleStatusStatusColor,
//     String? scheduleStatusStatusIcon,
//     String? scheduleStatusStatusCreatedAt,
//     String? scheduleStatusStatusUpdatedAt,
//   }) {
//     return DetailedScheduleState(
//       schedule: schedule ?? this.schedule,
//       scheduleId: scheduleId ?? this.scheduleId,
//       scheduleStatus: scheduleStatus ?? this.scheduleStatus,
//       scheduleStatusId: scheduleStatusId ?? this.scheduleStatusId,
//       scheduleStatusName: scheduleStatusName ??
//           this
//               .schedule
//               ?.scheduleStatus
//               ?.status
//               ?.name, // scheduleStatusName ?? this.scheduleStatusName,
//       scheduleStatusDescription: scheduleStatusDescription ??
//           this.schedule?.scheduleStatus?.status?.description,
//       scheduleStatusColor:
//           scheduleStatusColor ?? this.schedule?.scheduleStatus?.status?.color,
//       scheduleStatusIcon: scheduleStatusIcon ??
//           this
//               .schedule
//               ?.scheduleStatus
//               ?.status
//               ?.icon, // scheduleStatusIcon ?? this.scheduleStatusIcon,
//       scheduleStatusCreatedAt: scheduleStatusCreatedAt ??
//           this.schedule?.scheduleStatus?.status?.createdAt,
//       scheduleStatusUpdatedAt: scheduleStatusUpdatedAt ??
//           this.schedule?.scheduleStatus?.status?.updatedAt,
//       scheduleStatusDeletedAt: scheduleStatusDeletedAt ??
//           this.schedule?.scheduleStatus?.status?.deletedAt,
//       scheduleStatusScheduleId:
//           scheduleStatusScheduleId ?? this.schedule?.scheduleStatus?.scheduleId,
//       scheduleStatusStatusId: scheduleStatusStatusId ??
//           this
//               .schedule
//               ?.scheduleStatus
//               ?.status
//               ?.id, // scheduleStatusStatusId ?? this.scheduleStatusStatusId,
//       scheduleStatusStatusName: scheduleStatusStatusName ??
//           this.schedule?.scheduleStatus?.status?.status?.name,
//     );
//   }
// }

// // create a state class for the controller  


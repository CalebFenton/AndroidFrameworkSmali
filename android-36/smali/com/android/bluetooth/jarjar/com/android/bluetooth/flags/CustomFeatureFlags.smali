.class public Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1913
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xeb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_cleanup_on_remove_device"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_ignore_started_when_responder"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_lhdc_api"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_sm_ignore_connect_events_in_connecting_state"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_variable_aac_capability"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_version_1_4"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.abs_volume_sdp_conflict"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adapter_suspend_mgmt"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adm_remove_handling_wired"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.advertise_thread"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.aics_api"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_free_last_scn"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_gatt_connect_from_the_apps_without_making_leaudio_device_active"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_switching_hid_and_hogp"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.android_os_identifier"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.associate_browse_l2cap_request_with_active_control_channel"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_connect_on_multiple_hfp_when_no_a2dp_device"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_transport_pairing"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.av_stream_reconfigure_fix"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_signaling_on_peer_failure"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_suspend_cfm_bad_state"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_wait_for_initial_delay_report_as_initiator"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdtp_prevent_double_suspend"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avoid_l2c_processing_while_stack_shutdown"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avrcp_16_default"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.batch_scan_optimization"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bluetooth_power_telemetry"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bonded_device_smp_failure_handling"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.browsing_refactor"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_offload_socket_api"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_socket_api_l2cap_cid"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_ag_cmd_brsf_allow_uint32"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_av_use_peer_codec"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_defer_device_discovery_state_change_until_rnr_complete"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_disc_close_proper_conn_id"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_controller_sc_support"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_valid_discovery_database"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_cycle_irks"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.call_bluetooth_ready_before_profiles_start"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.change_default_trackable_adv_number"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_25q2_apis"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_in_stack"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.check_peer_hf_indicator"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.choose_wrong_hfp_codec_in_specific_config"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_auth_collision_state_on_pairing_complete"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_pairing_state_when_no_devrec"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.close_hid_if_uhid_ready_too_slow"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.configure_scan_on_resume"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.connect_hap_on_other_profile_connect"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.create_metadata_after_bonding"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.default_gatt_transport"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.directed_advertising_api"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_acls_by_bredr_disabled"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_hid_channels_serially"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_on_encryption_failure"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_reason_for_encryption_failure"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.distance_measurement_thread"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.do_not_hardcode_tmap_role_mask"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_mandate_auth_along_with_encryption"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_push_error_code_to_app_when_connected"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_queue_dup_rnr"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_update_sec_flags_on_csrk_save"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_validate_bond_state_from_profiles"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hci_disconnect_repeatedly"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hid_set_idle"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dsa_hw_transparent_codec"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.early_incoming_hid_connection"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.empty_names_are_invalid"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_battery_level_update_only_through_hf_indicator"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_ble_while_disabling_airplane"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_hap_by_default"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encrypted_advertising_data"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encryption_change_broadcast"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.extend_and_randomize_role_switch_delay"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_add_device_properties"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_avdt_rconfig_not_setting_l2cap"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_bluetooth_gatt_getting_duplicate_services"

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_buf_len_check_for_first_k_frame"

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_execute_write_no_pending"

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_hfp_qual_1_9"

    const/16 v3, 0x50

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_lecoc_socket_available"

    const/16 v3, 0x51

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_private_gatt_advertising_not_working"

    const/16 v3, 0x52

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_sco_command_status_handling"

    const/16 v3, 0x53

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_started_module_race"

    const/16 v3, 0x54

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unhandled_bqr_subevent"

    const/16 v3, 0x55

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unusable_adv_slot_due_to_map_access"

    const/16 v3, 0x56

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.floss_separate_host_privacy_and_llprivacy"

    const/16 v3, 0x57

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_callback_on_failure"

    const/16 v3, 0x58

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_clear_cache_on_factory_reset"

    const/16 v3, 0x59

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_queue_cleanup_connected"

    const/16 v3, 0x5a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.get_all_element_attributes_empty"

    const/16 v3, 0x5b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guard_bonded_device_properties"

    const/16 v3, 0x5c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guest_mode_bond"

    const/16 v3, 0x5d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.handle_delivery_sending_failure_events"

    const/16 v3, 0x5e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hap_connect_only_requested_device"

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hci_vendor_specific_extension"

    const/16 v3, 0x60

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_client_disconnecting_state"

    const/16 v3, 0x61

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_software_datapath"

    const/16 v3, 0x62

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_volume_control_property"

    const/16 v3, 0x63

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hh_state_update_race_fix"

    const/16 v3, 0x64

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hogp_reconnection"

    const/16 v3, 0x65

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.identity_address_type_api"

    const/16 v3, 0x66

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_auth_req_when_collision_timer_active"

    const/16 v3, 0x67

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_notify_when_already_connected"

    const/16 v3, 0x68

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unrelated_cancel_bond"

    const/16 v3, 0x69

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unselected_hid_transport_states"

    const/16 v3, 0x6a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.immediate_encryption_after_pairing"

    const/16 v3, 0x6b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.indicate_rfcomm_connection_complete_after_msc"

    const/16 v3, 0x6c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.initial_conn_params_p1"

    const/16 v3, 0x6d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.invalidate_hci_handle_on_acl_removal"

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.is_sco_managed_by_audio"

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_as_ordered_broadcast"

    const/16 v3, 0x70

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_ble_peripheral"

    const/16 v3, 0x71

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_public"

    const/16 v3, 0x72

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.kill_instead_of_exit"

    const/16 v3, 0x73

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_fcs_option_fix"

    const/16 v3, 0x74

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_tx_complete_cb_info"

    const/16 v3, 0x75

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_appearance_after_ctkd"

    const/16 v3, 0x76

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_ase_read_multiple_variable"

    const/16 v3, 0x77

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_disconnect_notification_handling"

    const/16 v3, 0x78

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_enc_on_reconnect"

    const/16 v3, 0x79

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_encryption_refresh_failure_handling"

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_impl_ack_pause_disarmed"

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_peripheral_enc_failure"

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_msft_support"

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_remove_non_oneway_binder_calls"

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_subrate_api"

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_aics_support"

    const/16 v3, 0x80

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_opus_codec_type"

    const/16 v3, 0x81

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_allow_leaudio_only_devices"

    const/16 v3, 0x82

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_bass_scan_with_internal_scan_controller"

    const/16 v3, 0x83

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_big_depends_on_audio_state"

    const/16 v3, 0x84

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_get_local_metadata"

    const/16 v3, 0x85

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_manage_primary_group"

    const/16 v3, 0x86

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_monitor_source_sync_status"

    const/16 v3, 0x87

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_prevent_resume_interruption"

    const/16 v3, 0x88

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_primary_group_selection"

    const/16 v3, 0x89

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_receive_state_processing_refactor"

    const/16 v3, 0x8a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_resync_helper"

    const/16 v3, 0x8b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_volume_control_for_connected_devices"

    const/16 v3, 0x8c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_config_profile_enabling"

    const/16 v3, 0x8d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_dev_options_respect_profile_sysprops"

    const/16 v3, 0x8e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_disable_broadcast_for_hap_device"

    const/16 v3, 0x8f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_gmap_client"

    const/16 v3, 0x90

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_monitor_unicast_source_when_managed_by_broadcast_delegator"

    const/16 v3, 0x91

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_mono_location_errata_api"

    const/16 v3, 0x92

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_multiple_vocs_instances_api"

    const/16 v3, 0x93

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_set_codec_config_preference"

    const/16 v3, 0x94

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sm_ignore_connect_events_in_connecting_state"

    const/16 v3, 0x95

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sort_scans_to_sync_by_fails"

    const/16 v3, 0x96

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_stop_updated_to_not_available_context_stream"

    const/16 v3, 0x97

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_aggressive_params"

    const/16 v3, 0x98

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_audio_recording_listener"

    const/16 v3, 0x99

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.maintain_call_index_after_conference"

    const/16 v3, 0x9a

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_inactive_audio_device_upon_connection"

    const/16 v3, 0x9b

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_microphone_for_call_enabled"

    const/16 v3, 0x9c

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.msft_addr_tracking_quirk"

    const/16 v3, 0x9d

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_conference_call_hangup"

    const/16 v3, 0x9e

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_zero_local_irk"

    const/16 v3, 0x9f

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.nrpa_non_connectable_adv"

    const/16 v3, 0xa0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.only_start_scan_during_ble_on"

    const/16 v3, 0xa1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_check_content_uri_permissions"

    const/16 v3, 0xa2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_device_picker_extra_intent_apis"

    const/16 v3, 0xa3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_remove_empty_group_notification"

    const/16 v3, 0xa4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_set_insets_for_edge_to_edge"

    const/16 v3, 0xa5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_cleanup_use_handler"

    const/16 v3, 0xa6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_contacts_caching"

    const/16 v3, 0xa7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_storage_refactor"

    const/16 v3, 0xa8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_limit_call_log"

    const/16 v3, 0xa9

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pending_hid_connection_cancellation"

    const/16 v3, 0xaa

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.peripheral_auth_req"

    const/16 v3, 0xab

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.phy_to_native"

    const/16 v3, 0xac

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_concurrent_conn_param_updates"

    const/16 v3, 0xad

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_duplicate_uuid_intent"

    const/16 v3, 0xae

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_service_connections_on_remove_bond"

    const/16 v3, 0xaf

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.queue_dis_requests"

    const/16 v3, 0xb0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.read_le_appearance"

    const/16 v3, 0xb1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.refactor_saving_messages_and_metadata"

    const/16 v3, 0xb2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_device_in_main_thread"

    const/16 v3, 0xb3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_dup_pairing_response_in_oob_pairing"

    const/16 v3, 0xb4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_pending_hid_connection"

    const/16 v3, 0xb5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.reset_security_flags_on_pairing_failure"

    const/16 v3, 0xb6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_always_disc_initiator_in_disc_wait_ua"

    const/16 v3, 0xb7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_cancel_ongoing_sdp_on_close"

    const/16 v3, 0xb8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_fix_mux_collision_handling"

    const/16 v3, 0xb9

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_directly_call_gap_over_le"

    const/16 v3, 0xba

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_store_device_type"

    const/16 v3, 0xbb

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_validate_page_scan_repetition_mode"

    const/16 v3, 0xbc

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rpa_offload_to_bt_controller"

    const/16 v3, 0xbd

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rssi_scan_filter"

    const/16 v3, 0xbe

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_ble_audio_ticks_in_worker_thread"

    const/16 v3, 0xbf

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_clock_recovery_in_worker_thread"

    const/16 v3, 0xc0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.same_handler_for_all_modules"

    const/16 v3, 0xc1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.save_peer_csrk_after_ltk_gen"

    const/16 v3, 0xc2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_controller_thread"

    const/16 v3, 0xc3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_results_in_main_thread"

    const/16 v3, 0xc4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sco_state_machine_cleanup"

    const/16 v3, 0xc5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sec_dont_clear_keys_on_encryption_err"

    const/16 v3, 0xc6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.send_opp_device_picker_extra_intent"

    const/16 v3, 0xc7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.separate_service_storage"

    const/16 v3, 0xc8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_addressed_player"

    const/16 v3, 0xc9

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_component_available_fix"

    const/16 v3, 0xca

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_max_data_length_for_lecoc"

    const/16 v3, 0xcb

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.settings_can_control_hap_preset"

    const/16 v3, 0xcc

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.signal_connecting_on_focus_gain"

    const/16 v3, 0xcd

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.simpler_hid_connection_policy"

    const/16 v3, 0xce

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.skip_unknown_robust_caching"

    const/16 v3, 0xcf

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.smp_connection_status_handling_when_no_acl"

    const/16 v3, 0xd0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_recreate_logs_directory"

    const/16 v3, 0xd1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_tracing"

    const/16 v3, 0xd2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.socket_settings_api"

    const/16 v3, 0xd3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.stack_sdp_detect_nil_property_type"

    const/16 v3, 0xd4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.start_discover_service_changed"

    const/16 v3, 0xd5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_bluetooth_quality_report_v6"

    const/16 v3, 0xd6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_metadata_device_types_apis"

    const/16 v3, 0xd7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_remote_device_metadata"

    const/16 v3, 0xd8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_messenger"

    const/16 v3, 0xd9

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_remove_extra_thread_jump"

    const/16 v3, 0xda

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.temporary_pairing_tracking"

    const/16 v3, 0xdb

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.trigger_sec_proc_on_inc_access_req"

    const/16 v3, 0xdc

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.uncache_player_when_browsed_player_changes"

    const/16 v3, 0xdd

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unix_file_socket_creation_failure"

    const/16 v3, 0xde

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unregister_gatt_client_disconnected"

    const/16 v3, 0xdf

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unrelated_device_smp_cancellation"

    const/16 v3, 0xe0

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_opp_launcher_user_changed"

    const/16 v3, 0xe1

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_sco_state_correctly_on_rfcomm_disconnect_during_codec_nego"

    const/16 v3, 0xe2

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.upgrade_temp_bonding_on_auth_req"

    const/16 v3, 0xe3

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.use_entire_message_handle"

    const/16 v3, 0xe4

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_allow_set_same_volume_if_pending"

    const/16 v3, 0xe5

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_device_volume_api_improvements"

    const/16 v3, 0xe6

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_mute_unmute"

    const/16 v3, 0xe7

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vup_for_pending_connection"

    const/16 v3, 0xe8

    aput-object v2, v1, v3

    const-string v2, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.wait_for_lea_disc_on_le_acl_stat"

    const/16 v3, 0xe9

    aput-object v2, v1, v3

    const-string v2, ""

    const/16 v3, 0xea

    aput-object v2, v1, v3

    .line 1914
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    iput-object p1, p0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 1667
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist a2dpCleanupOnRemoveDevice()Z
    .registers 3

    .line 22
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda211;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_cleanup_on_remove_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a2dpIgnoreStartedWhenResponder()Z
    .registers 3

    .line 29
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_ignore_started_when_responder"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a2dpLhdcApi()Z
    .registers 3

    .line 36
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda224;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_lhdc_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a2dpSmIgnoreConnectEventsInConnectingState()Z
    .registers 3

    .line 43
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda86;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_sm_ignore_connect_events_in_connecting_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a2dpVariableAacCapability()Z
    .registers 3

    .line 50
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda155;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_variable_aac_capability"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist a2dpVersion14()Z
    .registers 3

    .line 57
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda77;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_version_1_4"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist absVolumeSdpConflict()Z
    .registers 3

    .line 64
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda120;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.abs_volume_sdp_conflict"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist adapterSuspendMgmt()Z
    .registers 3

    .line 71
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda37;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adapter_suspend_mgmt"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist admRemoveHandlingWired()Z
    .registers 3

    .line 78
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda102;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adm_remove_handling_wired"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist advertiseThread()Z
    .registers 3

    .line 85
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.advertise_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist aicsApi()Z
    .registers 3

    .line 92
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda156;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.aics_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowFreeLastScn()Z
    .registers 3

    .line 99
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda201;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_free_last_scn"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowGattConnectFromTheAppsWithoutMakingLeaudioDeviceActive()Z
    .registers 3

    .line 106
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda173;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_gatt_connect_from_the_apps_without_making_leaudio_device_active"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist allowSwitchingHidAndHogp()Z
    .registers 3

    .line 113
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda207;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_switching_hid_and_hogp"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist androidOsIdentifier()Z
    .registers 3

    .line 120
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda46;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.android_os_identifier"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist associateBrowseL2capRequestWithActiveControlChannel()Z
    .registers 3

    .line 127
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda113;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.associate_browse_l2cap_request_with_active_control_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoConnectOnMultipleHfpWhenNoA2dpDevice()Z
    .registers 3

    .line 134
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda45;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_connect_on_multiple_hfp_when_no_a2dp_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autoTransportPairing()Z
    .registers 3

    .line 141
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda192;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_transport_pairing"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avStreamReconfigureFix()Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.av_stream_reconfigure_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avdtHandleSignalingOnPeerFailure()Z
    .registers 3

    .line 155
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda67;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_signaling_on_peer_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avdtHandleSuspendCfmBadState()Z
    .registers 3

    .line 162
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda117;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_suspend_cfm_bad_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avdtWaitForInitialDelayReportAsInitiator()Z
    .registers 3

    .line 169
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda188;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_wait_for_initial_delay_report_as_initiator"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avdtpPreventDoubleSuspend()Z
    .registers 3

    .line 176
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda92;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdtp_prevent_double_suspend"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avoidL2cProcessingWhileStackShutdown()Z
    .registers 3

    .line 183
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda175;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avoid_l2c_processing_while_stack_shutdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist avrcp16Default()Z
    .registers 3

    .line 190
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda54;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avrcp_16_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist batchScanOptimization()Z
    .registers 3

    .line 197
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda50;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.batch_scan_optimization"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bluetoothPowerTelemetry()Z
    .registers 3

    .line 204
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda232;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda232;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bluetooth_power_telemetry"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bondedDeviceSmpFailureHandling()Z
    .registers 3

    .line 211
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda151;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bonded_device_smp_failure_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist browsingRefactor()Z
    .registers 3

    .line 218
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda80;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.browsing_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btOffloadSocketApi()Z
    .registers 3

    .line 225
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda190;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_offload_socket_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btSocketApiL2capCid()Z
    .registers 3

    .line 232
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda131;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_socket_api_l2cap_cid"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btaAgCmdBrsfAllowUint32()Z
    .registers 3

    .line 239
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda84;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_ag_cmd_brsf_allow_uint32"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btaAvUsePeerCodec()Z
    .registers 3

    .line 246
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda139;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_av_use_peer_codec"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btaDmDeferDeviceDiscoveryStateChangeUntilRnrComplete()Z
    .registers 3

    .line 253
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda122;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_defer_device_discovery_state_change_until_rnr_complete"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btaDmDiscCloseProperConnId()Z
    .registers 3

    .line 260
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda154;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_disc_close_proper_conn_id"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btsecCheckControllerScSupport()Z
    .registers 3

    .line 267
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda145;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_controller_sc_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btsecCheckValidDiscoveryDatabase()Z
    .registers 3

    .line 274
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda108;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_valid_discovery_database"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist btsecCycleIrks()Z
    .registers 3

    .line 281
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_cycle_irks"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist callBluetoothReadyBeforeProfilesStart()Z
    .registers 3

    .line 288
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda60;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.call_bluetooth_ready_before_profiles_start"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist changeDefaultTrackableAdvNumber()Z
    .registers 3

    .line 295
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda229;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda229;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.change_default_trackable_adv_number"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist channelSounding()Z
    .registers 3

    .line 302
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda159;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist channelSounding25q2Apis()Z
    .registers 3

    .line 309
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_25q2_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist channelSoundingInStack()Z
    .registers 3

    .line 316
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_in_stack"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkPeerHfIndicator()Z
    .registers 3

    .line 323
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda65;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.check_peer_hf_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist chooseWrongHfpCodecInSpecificConfig()Z
    .registers 3

    .line 330
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda55;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.choose_wrong_hfp_codec_in_specific_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearAuthCollisionStateOnPairingComplete()Z
    .registers 3

    .line 337
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda47;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_auth_collision_state_on_pairing_complete"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist clearPairingStateWhenNoDevrec()Z
    .registers 3

    .line 344
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda153;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_pairing_state_when_no_devrec"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist closeHidIfUhidReadyTooSlow()Z
    .registers 3

    .line 351
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.close_hid_if_uhid_ready_too_slow"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist configureScanOnResume()Z
    .registers 3

    .line 358
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda199;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.configure_scan_on_resume"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist connectHapOnOtherProfileConnect()Z
    .registers 3

    .line 365
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda222;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.connect_hap_on_other_profile_connect"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist createMetadataAfterBonding()Z
    .registers 3

    .line 372
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda179;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.create_metadata_after_bonding"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist defaultGattTransport()Z
    .registers 3

    .line 379
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda91;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.default_gatt_transport"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist directedAdvertisingApi()Z
    .registers 3

    .line 386
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda56;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.directed_advertising_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disconnectAclsByBredrDisabled()Z
    .registers 3

    .line 393
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda158;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_acls_by_bredr_disabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disconnectHidChannelsSerially()Z
    .registers 3

    .line 400
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda210;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_hid_channels_serially"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disconnectOnEncryptionFailure()Z
    .registers 3

    .line 407
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda204;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_on_encryption_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disconnectReasonForEncryptionFailure()Z
    .registers 3

    .line 414
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda135;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_reason_for_encryption_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist distanceMeasurementThread()Z
    .registers 3

    .line 421
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.distance_measurement_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotHardcodeTmapRoleMask()Z
    .registers 3

    .line 428
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda59;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.do_not_hardcode_tmap_role_mask"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist donotMandateAuthAlongWithEncryption()Z
    .registers 3

    .line 435
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda212;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_mandate_auth_along_with_encryption"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist donotPushErrorCodeToAppWhenConnected()Z
    .registers 3

    .line 442
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda160;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_push_error_code_to_app_when_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist donotQueueDupRnr()Z
    .registers 3

    .line 449
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda221;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_queue_dup_rnr"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist donotUpdateSecFlagsOnCsrkSave()Z
    .registers 3

    .line 456
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda52;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_update_sec_flags_on_csrk_save"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist donotValidateBondStateFromProfiles()Z
    .registers 3

    .line 463
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda180;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_validate_bond_state_from_profiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontSendHciDisconnectRepeatedly()Z
    .registers 3

    .line 470
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda174;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hci_disconnect_repeatedly"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dontSendHidSetIdle()Z
    .registers 3

    .line 477
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda169;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hid_set_idle"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist dsaHwTransparentCodec()Z
    .registers 3

    .line 484
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda163;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dsa_hw_transparent_codec"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist earlyIncomingHidConnection()Z
    .registers 3

    .line 491
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda189;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.early_incoming_hid_connection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist emptyNamesAreInvalid()Z
    .registers 3

    .line 498
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda167;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.empty_names_are_invalid"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBatteryLevelUpdateOnlyThroughHfIndicator()Z
    .registers 3

    .line 505
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda230;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda230;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_battery_level_update_only_through_hf_indicator"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableBleWhileDisablingAirplane()Z
    .registers 3

    .line 512
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda144;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_ble_while_disabling_airplane"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableHapByDefault()Z
    .registers 3

    .line 519
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda51;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_hap_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist encryptedAdvertisingData()Z
    .registers 3

    .line 526
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda98;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encrypted_advertising_data"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist encryptionChangeBroadcast()Z
    .registers 3

    .line 533
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda228;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda228;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encryption_change_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist extendAndRandomizeRoleSwitchDelay()Z
    .registers 3

    .line 540
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda48;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.extend_and_randomize_role_switch_delay"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixAddDeviceProperties()Z
    .registers 3

    .line 547
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda128;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_add_device_properties"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixAvdtRconfigNotSettingL2cap()Z
    .registers 3

    .line 554
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda177;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_avdt_rconfig_not_setting_l2cap"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixBluetoothGattGettingDuplicateServices()Z
    .registers 3

    .line 561
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda38;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_bluetooth_gatt_getting_duplicate_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixBufLenCheckForFirstKFrame()Z
    .registers 3

    .line 568
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda219;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_buf_len_check_for_first_k_frame"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixExecuteWriteNoPending()Z
    .registers 3

    .line 575
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda191;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_execute_write_no_pending"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixHfpQual19()Z
    .registers 3

    .line 582
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda123;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_hfp_qual_1_9"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixLecocSocketAvailable()Z
    .registers 3

    .line 589
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_lecoc_socket_available"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixPrivateGattAdvertisingNotWorking()Z
    .registers 3

    .line 596
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda78;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_private_gatt_advertising_not_working"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixScoCommandStatusHandling()Z
    .registers 3

    .line 603
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda44;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_sco_command_status_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixStartedModuleRace()Z
    .registers 3

    .line 610
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_started_module_race"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixUnhandledBqrSubevent()Z
    .registers 3

    .line 617
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda124;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unhandled_bqr_subevent"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixUnusableAdvSlotDueToMapAccess()Z
    .registers 3

    .line 624
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda41;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unusable_adv_slot_due_to_map_access"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist flossSeparateHostPrivacyAndLlprivacy()Z
    .registers 3

    .line 631
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda134;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.floss_separate_host_privacy_and_llprivacy"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist gattCallbackOnFailure()Z
    .registers 3

    .line 638
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_callback_on_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist gattClearCacheOnFactoryReset()Z
    .registers 3

    .line 645
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda57;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_clear_cache_on_factory_reset"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist gattQueueCleanupConnected()Z
    .registers 3

    .line 652
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda118;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_queue_cleanup_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAllElementAttributesEmpty()Z
    .registers 3

    .line 659
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda150;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.get_all_element_attributes_empty"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1675
    const/16 v0, 0xea

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_cleanup_on_remove_device"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_ignore_started_when_responder"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_lhdc_api"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_sm_ignore_connect_events_in_connecting_state"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_variable_aac_capability"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.a2dp_version_1_4"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.abs_volume_sdp_conflict"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adapter_suspend_mgmt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.adm_remove_handling_wired"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.advertise_thread"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.aics_api"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_free_last_scn"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_gatt_connect_from_the_apps_without_making_leaudio_device_active"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.allow_switching_hid_and_hogp"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.android_os_identifier"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.associate_browse_l2cap_request_with_active_control_channel"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_connect_on_multiple_hfp_when_no_a2dp_device"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.auto_transport_pairing"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.av_stream_reconfigure_fix"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_signaling_on_peer_failure"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_handle_suspend_cfm_bad_state"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdt_wait_for_initial_delay_report_as_initiator"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avdtp_prevent_double_suspend"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avoid_l2c_processing_while_stack_shutdown"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.avrcp_16_default"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.batch_scan_optimization"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bluetooth_power_telemetry"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bonded_device_smp_failure_handling"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.browsing_refactor"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_offload_socket_api"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bt_socket_api_l2cap_cid"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_ag_cmd_brsf_allow_uint32"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_av_use_peer_codec"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_defer_device_discovery_state_change_until_rnr_complete"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.bta_dm_disc_close_proper_conn_id"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_controller_sc_support"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_check_valid_discovery_database"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.btsec_cycle_irks"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.call_bluetooth_ready_before_profiles_start"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.change_default_trackable_adv_number"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_25q2_apis"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.channel_sounding_in_stack"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.check_peer_hf_indicator"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.choose_wrong_hfp_codec_in_specific_config"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_auth_collision_state_on_pairing_complete"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.clear_pairing_state_when_no_devrec"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.close_hid_if_uhid_ready_too_slow"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.configure_scan_on_resume"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.connect_hap_on_other_profile_connect"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.create_metadata_after_bonding"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.default_gatt_transport"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.directed_advertising_api"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_acls_by_bredr_disabled"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_hid_channels_serially"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_on_encryption_failure"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.disconnect_reason_for_encryption_failure"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.distance_measurement_thread"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.do_not_hardcode_tmap_role_mask"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_mandate_auth_along_with_encryption"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_push_error_code_to_app_when_connected"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_queue_dup_rnr"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_update_sec_flags_on_csrk_save"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.donot_validate_bond_state_from_profiles"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hci_disconnect_repeatedly"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dont_send_hid_set_idle"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.dsa_hw_transparent_codec"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.early_incoming_hid_connection"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.empty_names_are_invalid"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_battery_level_update_only_through_hf_indicator"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_ble_while_disabling_airplane"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.enable_hap_by_default"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encrypted_advertising_data"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.encryption_change_broadcast"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.extend_and_randomize_role_switch_delay"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_add_device_properties"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_avdt_rconfig_not_setting_l2cap"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_bluetooth_gatt_getting_duplicate_services"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_buf_len_check_for_first_k_frame"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_execute_write_no_pending"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_hfp_qual_1_9"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_lecoc_socket_available"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_private_gatt_advertising_not_working"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_sco_command_status_handling"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_started_module_race"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unhandled_bqr_subevent"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.fix_unusable_adv_slot_due_to_map_access"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.floss_separate_host_privacy_and_llprivacy"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_callback_on_failure"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_clear_cache_on_factory_reset"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.gatt_queue_cleanup_connected"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.get_all_element_attributes_empty"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guard_bonded_device_properties"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guest_mode_bond"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.handle_delivery_sending_failure_events"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hap_connect_only_requested_device"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hci_vendor_specific_extension"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_client_disconnecting_state"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_software_datapath"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_volume_control_property"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hh_state_update_race_fix"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hogp_reconnection"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.identity_address_type_api"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_auth_req_when_collision_timer_active"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_notify_when_already_connected"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unrelated_cancel_bond"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unselected_hid_transport_states"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.immediate_encryption_after_pairing"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.indicate_rfcomm_connection_complete_after_msc"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.initial_conn_params_p1"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.invalidate_hci_handle_on_acl_removal"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.is_sco_managed_by_audio"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_as_ordered_broadcast"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_ble_peripheral"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_public"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.kill_instead_of_exit"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_fcs_option_fix"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_tx_complete_cb_info"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_appearance_after_ctkd"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_ase_read_multiple_variable"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_disconnect_notification_handling"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_enc_on_reconnect"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_encryption_refresh_failure_handling"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_impl_ack_pause_disarmed"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_peripheral_enc_failure"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_msft_support"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_remove_non_oneway_binder_calls"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_subrate_api"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_aics_support"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_opus_codec_type"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_allow_leaudio_only_devices"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_bass_scan_with_internal_scan_controller"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_big_depends_on_audio_state"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_get_local_metadata"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_manage_primary_group"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_monitor_source_sync_status"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_prevent_resume_interruption"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_primary_group_selection"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_receive_state_processing_refactor"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_resync_helper"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_volume_control_for_connected_devices"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_config_profile_enabling"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_dev_options_respect_profile_sysprops"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_disable_broadcast_for_hap_device"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_gmap_client"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_monitor_unicast_source_when_managed_by_broadcast_delegator"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_mono_location_errata_api"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_multiple_vocs_instances_api"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_set_codec_config_preference"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sm_ignore_connect_events_in_connecting_state"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sort_scans_to_sync_by_fails"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_stop_updated_to_not_available_context_stream"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_aggressive_params"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_audio_recording_listener"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.maintain_call_index_after_conference"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_inactive_audio_device_upon_connection"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_microphone_for_call_enabled"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.msft_addr_tracking_quirk"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_conference_call_hangup"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_zero_local_irk"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.nrpa_non_connectable_adv"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.only_start_scan_during_ble_on"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_check_content_uri_permissions"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_device_picker_extra_intent_apis"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_remove_empty_group_notification"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_set_insets_for_edge_to_edge"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_cleanup_use_handler"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_contacts_caching"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_storage_refactor"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_limit_call_log"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pending_hid_connection_cancellation"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.peripheral_auth_req"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.phy_to_native"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_concurrent_conn_param_updates"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_duplicate_uuid_intent"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_service_connections_on_remove_bond"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.queue_dis_requests"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.read_le_appearance"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.refactor_saving_messages_and_metadata"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_device_in_main_thread"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_dup_pairing_response_in_oob_pairing"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_pending_hid_connection"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.reset_security_flags_on_pairing_failure"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_always_disc_initiator_in_disc_wait_ua"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_cancel_ongoing_sdp_on_close"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_fix_mux_collision_handling"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_directly_call_gap_over_le"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_store_device_type"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_validate_page_scan_repetition_mode"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rpa_offload_to_bt_controller"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rssi_scan_filter"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_ble_audio_ticks_in_worker_thread"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_clock_recovery_in_worker_thread"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.same_handler_for_all_modules"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.save_peer_csrk_after_ltk_gen"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_controller_thread"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_results_in_main_thread"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sco_state_machine_cleanup"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sec_dont_clear_keys_on_encryption_err"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.send_opp_device_picker_extra_intent"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.separate_service_storage"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_addressed_player"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_component_available_fix"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_max_data_length_for_lecoc"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.settings_can_control_hap_preset"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.signal_connecting_on_focus_gain"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.simpler_hid_connection_policy"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.skip_unknown_robust_caching"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.smp_connection_status_handling_when_no_acl"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_recreate_logs_directory"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_tracing"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.socket_settings_api"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.stack_sdp_detect_nil_property_type"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.start_discover_service_changed"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_bluetooth_quality_report_v6"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_metadata_device_types_apis"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_remote_device_metadata"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_messenger"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_remove_extra_thread_jump"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.temporary_pairing_tracking"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.trigger_sec_proc_on_inc_access_req"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.uncache_player_when_browsed_player_changes"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unix_file_socket_creation_failure"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unregister_gatt_client_disconnected"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unrelated_device_smp_cancellation"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_opp_launcher_user_changed"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_sco_state_correctly_on_rfcomm_disconnect_during_codec_nego"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.upgrade_temp_bonding_on_auth_req"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.use_entire_message_handle"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_allow_set_same_volume_if_pending"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_device_volume_api_improvements"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_mute_unmute"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vup_for_pending_connection"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.wait_for_lea_disc_on_le_acl_stat"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 1671
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist guardBondedDeviceProperties()Z
    .registers 3

    .line 666
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda194;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guard_bonded_device_properties"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist guestModeBond()Z
    .registers 3

    .line 673
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda209;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.guest_mode_bond"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handleDeliverySendingFailureEvents()Z
    .registers 3

    .line 680
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda220;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.handle_delivery_sending_failure_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hapConnectOnlyRequestedDevice()Z
    .registers 3

    .line 687
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda170;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hap_connect_only_requested_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hciVendorSpecificExtension()Z
    .registers 3

    .line 694
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda109;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hci_vendor_specific_extension"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hfpClientDisconnectingState()Z
    .registers 3

    .line 701
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda130;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_client_disconnecting_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hfpSoftwareDatapath()Z
    .registers 3

    .line 708
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_software_datapath"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hfpVolumeControlProperty()Z
    .registers 3

    .line 715
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hfp_volume_control_property"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hhStateUpdateRaceFix()Z
    .registers 3

    .line 722
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda101;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hh_state_update_race_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hogpReconnection()Z
    .registers 3

    .line 729
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.hogp_reconnection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist identityAddressTypeApi()Z
    .registers 3

    .line 736
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda195;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.identity_address_type_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreAuthReqWhenCollisionTimerActive()Z
    .registers 3

    .line 743
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda100;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_auth_req_when_collision_timer_active"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreNotifyWhenAlreadyConnected()Z
    .registers 3

    .line 750
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda69;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_notify_when_already_connected"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreUnrelatedCancelBond()Z
    .registers 3

    .line 757
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda225;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unrelated_cancel_bond"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ignoreUnselectedHidTransportStates()Z
    .registers 3

    .line 764
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.ignore_unselected_hid_transport_states"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist immediateEncryptionAfterPairing()Z
    .registers 3

    .line 771
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.immediate_encryption_after_pairing"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist indicateRfcommConnectionCompleteAfterMsc()Z
    .registers 3

    .line 778
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda185;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.indicate_rfcomm_connection_complete_after_msc"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist initialConnParamsP1()Z
    .registers 3

    .line 785
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda115;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.initial_conn_params_p1"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist invalidateHciHandleOnAclRemoval()Z
    .registers 3

    .line 792
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda107;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.invalidate_hci_handle_on_acl_removal"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 1658
    iget-object v0, p0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1659
    invoke-direct {p0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1660
    const/4 v0, 0x1

    return v0

    .line 1662
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScoManagedByAudio()Z
    .registers 3

    .line 799
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.is_sco_managed_by_audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyMissingAsOrderedBroadcast()Z
    .registers 3

    .line 806
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda176;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_as_ordered_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyMissingBlePeripheral()Z
    .registers 3

    .line 813
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda193;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_ble_peripheral"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist keyMissingPublic()Z
    .registers 3

    .line 820
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.key_missing_public"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist killInsteadOfExit()Z
    .registers 3

    .line 827
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda213;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.kill_instead_of_exit"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist l2capFcsOptionFix()Z
    .registers 3

    .line 834
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda162;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_fcs_option_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist l2capTxCompleteCbInfo()Z
    .registers 3

    .line 841
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda182;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.l2cap_tx_complete_cb_info"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leAppearanceAfterCtkd()Z
    .registers 3

    .line 848
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda198;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_appearance_after_ctkd"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leAseReadMultipleVariable()Z
    .registers 3

    .line 855
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda165;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_ase_read_multiple_variable"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leDisconnectNotificationHandling()Z
    .registers 3

    .line 862
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda64;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_disconnect_notification_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leEncOnReconnect()Z
    .registers 3

    .line 869
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda73;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_enc_on_reconnect"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leEncryptionRefreshFailureHandling()Z
    .registers 3

    .line 876
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_encryption_refresh_failure_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leImplAckPauseDisarmed()Z
    .registers 3

    .line 883
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda138;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_impl_ack_pause_disarmed"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist lePeripheralEncFailure()Z
    .registers 3

    .line 890
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda148;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_peripheral_enc_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leScanMsftSupport()Z
    .registers 3

    .line 897
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda146;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_msft_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leScanRemoveNonOnewayBinderCalls()Z
    .registers 3

    .line 904
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda82;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_scan_remove_non_oneway_binder_calls"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leSubrateApi()Z
    .registers 3

    .line 911
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda142;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.le_subrate_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioAddAicsSupport()Z
    .registers 3

    .line 918
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda226;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_aics_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioAddOpusCodecType()Z
    .registers 3

    .line 925
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda104;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_add_opus_codec_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioAllowLeaudioOnlyDevices()Z
    .registers 3

    .line 932
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda70;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_allow_leaudio_only_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBassScanWithInternalScanController()Z
    .registers 3

    .line 939
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda72;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_bass_scan_with_internal_scan_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBigDependsOnAudioState()Z
    .registers 3

    .line 946
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_big_depends_on_audio_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastApiGetLocalMetadata()Z
    .registers 3

    .line 953
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_get_local_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastApiManagePrimaryGroup()Z
    .registers 3

    .line 960
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda152;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_api_manage_primary_group"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastMonitorSourceSyncStatus()Z
    .registers 3

    .line 967
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_monitor_source_sync_status"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastPreventResumeInterruption()Z
    .registers 3

    .line 974
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda136;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_prevent_resume_interruption"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastPrimaryGroupSelection()Z
    .registers 3

    .line 981
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda62;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_primary_group_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastReceiveStateProcessingRefactor()Z
    .registers 3

    .line 988
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda116;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_receive_state_processing_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastResyncHelper()Z
    .registers 3

    .line 995
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda181;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_resync_helper"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioBroadcastVolumeControlForConnectedDevices()Z
    .registers 3

    .line 1002
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_broadcast_volume_control_for_connected_devices"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioConfigProfileEnabling()Z
    .registers 3

    .line 1009
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda121;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_config_profile_enabling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioDevOptionsRespectProfileSysprops()Z
    .registers 3

    .line 1016
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda133;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_dev_options_respect_profile_sysprops"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioDisableBroadcastForHapDevice()Z
    .registers 3

    .line 1023
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda218;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_disable_broadcast_for_hap_device"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioGmapClient()Z
    .registers 3

    .line 1030
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda215;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_gmap_client"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioMonitorUnicastSourceWhenManagedByBroadcastDelegator()Z
    .registers 3

    .line 1037
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda74;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_monitor_unicast_source_when_managed_by_broadcast_delegator"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioMonoLocationErrataApi()Z
    .registers 3

    .line 1044
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda105;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_mono_location_errata_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioMultipleVocsInstancesApi()Z
    .registers 3

    .line 1051
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda119;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_multiple_vocs_instances_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioSetCodecConfigPreference()Z
    .registers 3

    .line 1058
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda161;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_set_codec_config_preference"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioSmIgnoreConnectEventsInConnectingState()Z
    .registers 3

    .line 1065
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda68;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sm_ignore_connect_events_in_connecting_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioSortScansToSyncByFails()Z
    .registers 3

    .line 1072
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda202;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_sort_scans_to_sync_by_fails"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioStopUpdatedToNotAvailableContextStream()Z
    .registers 3

    .line 1079
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda227;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_stop_updated_to_not_available_context_stream"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioUseAggressiveParams()Z
    .registers 3

    .line 1086
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda143;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_aggressive_params"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist leaudioUseAudioRecordingListener()Z
    .registers 3

    .line 1093
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda184;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.leaudio_use_audio_recording_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist maintainCallIndexAfterConference()Z
    .registers 3

    .line 1100
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.maintain_call_index_after_conference"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist metadataApiInactiveAudioDeviceUponConnection()Z
    .registers 3

    .line 1107
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda127;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_inactive_audio_device_upon_connection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist metadataApiMicrophoneForCallEnabled()Z
    .registers 3

    .line 1114
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.metadata_api_microphone_for_call_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist msftAddrTrackingQuirk()Z
    .registers 3

    .line 1121
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda79;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.msft_addr_tracking_quirk"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nonConferenceCallHangup()Z
    .registers 3

    .line 1128
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda96;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_conference_call_hangup"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nonZeroLocalIrk()Z
    .registers 3

    .line 1135
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda217;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.non_zero_local_irk"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nrpaNonConnectableAdv()Z
    .registers 3

    .line 1142
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda196;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.nrpa_non_connectable_adv"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist onlyStartScanDuringBleOn()Z
    .registers 3

    .line 1149
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda53;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.only_start_scan_during_ble_on"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oppCheckContentUriPermissions()Z
    .registers 3

    .line 1156
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda200;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_check_content_uri_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oppDevicePickerExtraIntentApis()Z
    .registers 3

    .line 1163
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda89;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_device_picker_extra_intent_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oppRemoveEmptyGroupNotification()Z
    .registers 3

    .line 1170
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda106;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_remove_empty_group_notification"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist oppSetInsetsForEdgeToEdge()Z
    .registers 3

    .line 1177
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda168;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.opp_set_insets_for_edge_to_edge"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pbapCleanupUseHandler()Z
    .registers 3

    .line 1184
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_cleanup_use_handler"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pbapClientContactsCaching()Z
    .registers 3

    .line 1191
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda206;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_contacts_caching"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pbapClientStorageRefactor()Z
    .registers 3

    .line 1198
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda75;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_client_storage_refactor"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pbapLimitCallLog()Z
    .registers 3

    .line 1205
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda157;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pbap_limit_call_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist pendingHidConnectionCancellation()Z
    .registers 3

    .line 1212
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda208;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.pending_hid_connection_cancellation"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist peripheralAuthReq()Z
    .registers 3

    .line 1219
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda140;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.peripheral_auth_req"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist phyToNative()Z
    .registers 3

    .line 1226
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda71;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.phy_to_native"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventConcurrentConnParamUpdates()Z
    .registers 3

    .line 1233
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda233;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda233;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_concurrent_conn_param_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventDuplicateUuidIntent()Z
    .registers 3

    .line 1240
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_duplicate_uuid_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist preventServiceConnectionsOnRemoveBond()Z
    .registers 3

    .line 1247
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda66;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.prevent_service_connections_on_remove_bond"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist queueDisRequests()Z
    .registers 3

    .line 1254
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.queue_dis_requests"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist readLeAppearance()Z
    .registers 3

    .line 1261
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda183;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.read_le_appearance"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist refactorSavingMessagesAndMetadata()Z
    .registers 3

    .line 1268
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.refactor_saving_messages_and_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeDeviceInMainThread()Z
    .registers 3

    .line 1275
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda216;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_device_in_main_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeDupPairingResponseInOobPairing()Z
    .registers 3

    .line 1282
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda90;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_dup_pairing_response_in_oob_pairing"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removePendingHidConnection()Z
    .registers 3

    .line 1289
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda197;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.remove_pending_hid_connection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist resetSecurityFlagsOnPairingFailure()Z
    .registers 3

    .line 1296
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda231;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda231;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.reset_security_flags_on_pairing_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rfcommAlwaysDiscInitiatorInDiscWaitUa()Z
    .registers 3

    .line 1303
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda205;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_always_disc_initiator_in_disc_wait_ua"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rfcommCancelOngoingSdpOnClose()Z
    .registers 3

    .line 1310
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda178;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_cancel_ongoing_sdp_on_close"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rfcommFixMuxCollisionHandling()Z
    .registers 3

    .line 1317
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda203;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rfcomm_fix_mux_collision_handling"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rnrDirectlyCallGapOverLe()Z
    .registers 3

    .line 1324
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda111;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_directly_call_gap_over_le"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rnrStoreDeviceType()Z
    .registers 3

    .line 1331
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda83;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_store_device_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rnrValidatePageScanRepetitionMode()Z
    .registers 3

    .line 1338
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda149;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rnr_validate_page_scan_repetition_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rpaOffloadToBtController()Z
    .registers 3

    .line 1345
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda97;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rpa_offload_to_bt_controller"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rssiScanFilter()Z
    .registers 3

    .line 1352
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda164;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.rssi_scan_filter"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist runBleAudioTicksInWorkerThread()Z
    .registers 3

    .line 1359
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda61;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_ble_audio_ticks_in_worker_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist runClockRecoveryInWorkerThread()Z
    .registers 3

    .line 1366
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.run_clock_recovery_in_worker_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sameHandlerForAllModules()Z
    .registers 3

    .line 1373
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda171;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.same_handler_for_all_modules"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist savePeerCsrkAfterLtkGen()Z
    .registers 3

    .line 1380
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda147;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.save_peer_csrk_after_ltk_gen"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scanControllerThread()Z
    .registers 3

    .line 1387
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda223;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_controller_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scanResultsInMainThread()Z
    .registers 3

    .line 1394
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda95;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.scan_results_in_main_thread"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist scoStateMachineCleanup()Z
    .registers 3

    .line 1401
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda114;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sco_state_machine_cleanup"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist secDontClearKeysOnEncryptionErr()Z
    .registers 3

    .line 1408
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.sec_dont_clear_keys_on_encryption_err"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist sendOppDevicePickerExtraIntent()Z
    .registers 3

    .line 1415
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.send_opp_device_picker_extra_intent"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist separateServiceStorage()Z
    .registers 3

    .line 1422
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.separate_service_storage"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setAddressedPlayer()Z
    .registers 3

    .line 1429
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_addressed_player"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setComponentAvailableFix()Z
    .registers 3

    .line 1436
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda129;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_component_available_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist setMaxDataLengthForLecoc()Z
    .registers 3

    .line 1443
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda112;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.set_max_data_length_for_lecoc"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist settingsCanControlHapPreset()Z
    .registers 3

    .line 1450
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda186;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.settings_can_control_hap_preset"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist signalConnectingOnFocusGain()Z
    .registers 3

    .line 1457
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda110;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.signal_connecting_on_focus_gain"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist simplerHidConnectionPolicy()Z
    .registers 3

    .line 1464
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.simpler_hid_connection_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist skipUnknownRobustCaching()Z
    .registers 3

    .line 1471
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda88;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.skip_unknown_robust_caching"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist smpConnectionStatusHandlingWhenNoAcl()Z
    .registers 3

    .line 1478
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda39;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.smp_connection_status_handling_when_no_acl"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist snoopLoggerRecreateLogsDirectory()Z
    .registers 3

    .line 1485
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_recreate_logs_directory"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist snoopLoggerTracing()Z
    .registers 3

    .line 1492
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.snoop_logger_tracing"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist socketSettingsApi()Z
    .registers 3

    .line 1499
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda49;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.socket_settings_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist stackSdpDetectNilPropertyType()Z
    .registers 3

    .line 1506
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda76;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.stack_sdp_detect_nil_property_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist startDiscoverServiceChanged()Z
    .registers 3

    .line 1513
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda103;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.start_discover_service_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportBluetoothQualityReportV6()Z
    .registers 3

    .line 1520
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda81;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_bluetooth_quality_report_v6"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportMetadataDeviceTypesApis()Z
    .registers 3

    .line 1527
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_metadata_device_types_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportRemoteDeviceMetadata()Z
    .registers 3

    .line 1534
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda40;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.support_remote_device_metadata"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerMessenger()Z
    .registers 3

    .line 1541
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda137;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_messenger"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist systemServerRemoveExtraThreadJump()Z
    .registers 3

    .line 1548
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda126;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.system_server_remove_extra_thread_jump"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist temporaryPairingTracking()Z
    .registers 3

    .line 1555
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda141;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.temporary_pairing_tracking"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist triggerSecProcOnIncAccessReq()Z
    .registers 3

    .line 1562
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda43;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.trigger_sec_proc_on_inc_access_req"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist uncachePlayerWhenBrowsedPlayerChanges()Z
    .registers 3

    .line 1569
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda214;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.uncache_player_when_browsed_player_changes"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unixFileSocketCreationFailure()Z
    .registers 3

    .line 1576
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda187;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unix_file_socket_creation_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterGattClientDisconnected()Z
    .registers 3

    .line 1583
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda125;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unregister_gatt_client_disconnected"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist unrelatedDeviceSmpCancellation()Z
    .registers 3

    .line 1590
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda85;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.unrelated_device_smp_cancellation"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateOppLauncherUserChanged()Z
    .registers 3

    .line 1597
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_opp_launcher_user_changed"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateScoStateCorrectlyOnRfcommDisconnectDuringCodecNego()Z
    .registers 3

    .line 1604
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda93;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.update_sco_state_correctly_on_rfcomm_disconnect_during_codec_nego"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist upgradeTempBondingOnAuthReq()Z
    .registers 3

    .line 1611
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda166;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.upgrade_temp_bonding_on_auth_req"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useEntireMessageHandle()Z
    .registers 3

    .line 1618
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda132;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.use_entire_message_handle"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vcpAllowSetSameVolumeIfPending()Z
    .registers 3

    .line 1625
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda58;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_allow_set_same_volume_if_pending"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vcpDeviceVolumeApiImprovements()Z
    .registers 3

    .line 1632
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_device_volume_api_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vcpMuteUnmute()Z
    .registers 3

    .line 1639
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vcp_mute_unmute"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vupForPendingConnection()Z
    .registers 3

    .line 1646
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda172;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.vup_for_pending_connection"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist waitForLeaDiscOnLeAclStat()Z
    .registers 3

    .line 1653
    new-instance v0, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "com.android.bluetooth.jarjar.com.android.bluetooth.flags.wait_for_lea_disc_on_le_acl_stat"

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

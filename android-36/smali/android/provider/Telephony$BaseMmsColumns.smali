.class public interface abstract Landroid/provider/Telephony$BaseMmsColumns;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseMmsColumns"
.end annotation


# static fields
.field public static final greylist-max-o ADAPTATION_ALLOWED:Ljava/lang/String; = "adp_a"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o APPLIC_ID:Ljava/lang/String; = "apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o AUX_APPLIC_ID:Ljava/lang/String; = "aux_apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o CANCEL_ID:Ljava/lang/String; = "cl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o CANCEL_STATUS:Ljava/lang/String; = "cl_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_CLASS:Ljava/lang/String; = "ct_cls"

.field public static final whitelist CONTENT_LOCATION:Ljava/lang/String; = "ct_l"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "ct_t"

.field public static final whitelist CREATOR:Ljava/lang/String; = "creator"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DATE_SENT:Ljava/lang/String; = "date_sent"

.field public static final whitelist DELIVERY_REPORT:Ljava/lang/String; = "d_rpt"

.field public static final whitelist DELIVERY_TIME:Ljava/lang/String; = "d_tm"

.field public static final greylist-max-o DELIVERY_TIME_TOKEN:Ljava/lang/String; = "d_tm_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DISTRIBUTION_INDICATOR:Ljava/lang/String; = "d_ind"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o DRM_CONTENT:Ljava/lang/String; = "drm_c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ELEMENT_DESCRIPTOR:Ljava/lang/String; = "e_des"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXPIRY:Ljava/lang/String; = "exp"

.field public static final greylist-max-o LIMIT:Ljava/lang/String; = "limit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LOCKED:Ljava/lang/String; = "locked"

.field public static final greylist-max-o MBOX_QUOTAS:Ljava/lang/String; = "mb_qt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MBOX_QUOTAS_TOKEN:Ljava/lang/String; = "mb_qt_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MBOX_TOTALS:Ljava/lang/String; = "mb_t"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MBOX_TOTALS_TOKEN:Ljava/lang/String; = "mb_t_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MESSAGE_BOX:Ljava/lang/String; = "msg_box"

.field public static final whitelist MESSAGE_BOX_ALL:I = 0x0

.field public static final whitelist MESSAGE_BOX_DRAFTS:I = 0x3

.field public static final whitelist MESSAGE_BOX_FAILED:I = 0x5

.field public static final whitelist MESSAGE_BOX_INBOX:I = 0x1

.field public static final whitelist MESSAGE_BOX_OUTBOX:I = 0x4

.field public static final whitelist MESSAGE_BOX_SENT:I = 0x2

.field public static final whitelist MESSAGE_CLASS:Ljava/lang/String; = "m_cls"

.field public static final greylist-max-o MESSAGE_COUNT:Ljava/lang/String; = "m_cnt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MESSAGE_ID:Ljava/lang/String; = "m_id"

.field public static final whitelist MESSAGE_SIZE:Ljava/lang/String; = "m_size"

.field public static final whitelist MESSAGE_TYPE:Ljava/lang/String; = "m_type"

.field public static final whitelist MMS_VERSION:Ljava/lang/String; = "v"

.field public static final greylist-max-o MM_FLAGS:Ljava/lang/String; = "mm_flg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MM_FLAGS_TOKEN:Ljava/lang/String; = "mm_flg_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o MM_STATE:Ljava/lang/String; = "mm_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o PREVIOUSLY_SENT_BY:Ljava/lang/String; = "p_s_by"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o PREVIOUSLY_SENT_DATE:Ljava/lang/String; = "p_s_d"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PRIORITY:Ljava/lang/String; = "pri"

.field public static final greylist-max-o QUOTAS:Ljava/lang/String; = "qt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist READ:Ljava/lang/String; = "read"

.field public static final whitelist READ_REPORT:Ljava/lang/String; = "rr"

.field public static final whitelist READ_STATUS:Ljava/lang/String; = "read_status"

.field public static final greylist-max-o RECOMMENDED_RETRIEVAL_MODE:Ljava/lang/String; = "r_r_mod"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o RECOMMENDED_RETRIEVAL_MODE_TEXT:Ljava/lang/String; = "r_r_mod_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLACE_ID:Ljava/lang/String; = "repl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_APPLIC_ID:Ljava/lang/String; = "r_apl_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_CHARGING:Ljava/lang/String; = "r_chg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_CHARGING_DEADLINE:Ljava/lang/String; = "r_chg_dl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_CHARGING_DEADLINE_TOKEN:Ljava/lang/String; = "r_chg_dl_tok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_CHARGING_ID:Ljava/lang/String; = "r_chg_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o REPLY_CHARGING_SIZE:Ljava/lang/String; = "r_chg_sz"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist REPORT_ALLOWED:Ljava/lang/String; = "rpt_a"

.field public static final whitelist RESPONSE_STATUS:Ljava/lang/String; = "resp_st"

.field public static final whitelist RESPONSE_TEXT:Ljava/lang/String; = "resp_txt"

.field public static final whitelist RETRIEVE_STATUS:Ljava/lang/String; = "retr_st"

.field public static final whitelist RETRIEVE_TEXT:Ljava/lang/String; = "retr_txt"

.field public static final whitelist RETRIEVE_TEXT_CHARSET:Ljava/lang/String; = "retr_txt_cs"

.field public static final whitelist SEEN:Ljava/lang/String; = "seen"

.field public static final greylist-max-o SENDER_VISIBILITY:Ljava/lang/String; = "s_vis"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o START:Ljava/lang/String; = "start"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS:Ljava/lang/String; = "st"

.field public static final greylist-max-o STATUS_TEXT:Ljava/lang/String; = "st_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STORE:Ljava/lang/String; = "store"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STORED:Ljava/lang/String; = "stored"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STORE_STATUS:Ljava/lang/String; = "store_st"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STORE_STATUS_TEXT:Ljava/lang/String; = "store_st_txt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUBJECT:Ljava/lang/String; = "sub"

.field public static final whitelist SUBJECT_CHARSET:Ljava/lang/String; = "sub_cs"

.field public static final whitelist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TEXT_ONLY:Ljava/lang/String; = "text_only"

.field public static final whitelist THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final greylist-max-o TOTALS:Ljava/lang/String; = "totals"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TRANSACTION_ID:Ljava/lang/String; = "tr_id"

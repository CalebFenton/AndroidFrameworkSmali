.class public interface abstract Landroid/provider/ContactsContract$ContactOptionsColumns;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ContactOptionsColumns"
.end annotation


# static fields
.field public static final whitelist CUSTOM_RINGTONE:Ljava/lang/String; = "custom_ringtone"

.field public static final whitelist LAST_TIME_CONTACTED:Ljava/lang/String; = "last_time_contacted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o LR_LAST_TIME_CONTACTED:Ljava/lang/String; = "last_time_contacted"

.field public static final greylist-max-o LR_TIMES_CONTACTED:Ljava/lang/String; = "times_contacted"

.field public static final whitelist PINNED:Ljava/lang/String; = "pinned"

.field public static final greylist-max-o RAW_LAST_TIME_CONTACTED:Ljava/lang/String; = "x_last_time_contacted"

.field public static final greylist-max-o RAW_TIMES_CONTACTED:Ljava/lang/String; = "x_times_contacted"

.field public static final whitelist SEND_TO_VOICEMAIL:Ljava/lang/String; = "send_to_voicemail"

.field public static final whitelist STARRED:Ljava/lang/String; = "starred"

.field public static final whitelist TIMES_CONTACTED:Ljava/lang/String; = "times_contacted"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

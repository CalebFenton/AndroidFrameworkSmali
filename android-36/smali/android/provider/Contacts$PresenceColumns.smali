.class public interface abstract Landroid/provider/Contacts$PresenceColumns;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresenceColumns"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist AVAILABLE:I = 0x5

.field public static final whitelist AWAY:I = 0x2

.field public static final whitelist DO_NOT_DISTURB:I = 0x4

.field public static final whitelist IDLE:I = 0x3

.field public static final whitelist IM_ACCOUNT:Ljava/lang/String; = "im_account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IM_HANDLE:Ljava/lang/String; = "im_handle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IM_PROTOCOL:Ljava/lang/String; = "im_protocol"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INVISIBLE:I = 0x1

.field public static final whitelist OFFLINE:I = 0x0

.field public static final whitelist PRESENCE_CUSTOM_STATUS:Ljava/lang/String; = "status"

.field public static final whitelist PRESENCE_STATUS:Ljava/lang/String; = "mode"

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

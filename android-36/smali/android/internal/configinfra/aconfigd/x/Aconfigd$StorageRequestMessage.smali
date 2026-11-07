.class public final Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/configinfra/aconfigd/x/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageRequestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$ListStorageMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$ResetStorageMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$FlagQueryMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$RemoveLocalOverrideMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$OTAFlagStagingMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$FlagOverrideMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageRequestMessage$NewStorageMessage;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_OVERRIDE_MESSAGE:J = 0x10b00000002L

.field public static final blacklist FLAG_QUERY_MESSAGE:J = 0x10b00000004L

.field public static final blacklist LIST_STORAGE_MESSAGE:J = 0x10b00000007L

.field public static final blacklist LOCAL_IMMEDIATE:I = 0x1

.field public static final blacklist LOCAL_ON_REBOOT:I = 0x2

.field public static final blacklist NEW_STORAGE_MESSAGE:J = 0x10b00000001L

.field public static final blacklist OTA_STAGING_MESSAGE:J = 0x10b00000003L

.field public static final blacklist REMOVE_LOCAL_IMMEDIATE:I = 0x1

.field public static final blacklist REMOVE_LOCAL_ON_REBOOT:I = 0x2

.field public static final blacklist REMOVE_LOCAL_OVERRIDE_MESSAGE:J = 0x10b00000005L

.field public static final blacklist RESET_STORAGE_MESSAGE:J = 0x10b00000006L

.field public static final blacklist SERVER_ON_REBOOT:I = 0x3


# direct methods
.method public constructor blacklist <init>(Landroid/internal/configinfra/aconfigd/x/Aconfigd;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/configinfra/aconfigd/x/Aconfigd;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

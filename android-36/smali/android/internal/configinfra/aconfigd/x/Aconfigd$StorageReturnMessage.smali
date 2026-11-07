.class public final Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/configinfra/aconfigd/x/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageReturnMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$ListStorageReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$ResetStorageReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$RemoveLocalOverrideReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$FlagQueryReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$OTAFlagStagingReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$FlagOverrideReturnMessage;,
        Landroid/internal/configinfra/aconfigd/x/Aconfigd$StorageReturnMessage$NewStorageReturnMessage;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_MESSAGE:J = 0x10900000008L

.field public static final blacklist FLAG_OVERRIDE_MESSAGE:J = 0x10b00000002L

.field public static final blacklist FLAG_QUERY_MESSAGE:J = 0x10b00000004L

.field public static final blacklist LIST_STORAGE_MESSAGE:J = 0x10b00000007L

.field public static final blacklist NEW_STORAGE_MESSAGE:J = 0x10b00000001L

.field public static final blacklist OTA_STAGING_MESSAGE:J = 0x10b00000003L

.field public static final blacklist REMOVE_LOCAL_OVERRIDE_MESSAGE:J = 0x10b00000005L

.field public static final blacklist RESET_STORAGE_MESSAGE:J = 0x10b00000006L


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

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

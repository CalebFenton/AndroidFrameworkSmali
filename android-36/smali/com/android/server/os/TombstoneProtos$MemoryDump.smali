.class public final Lcom/android/server/os/TombstoneProtos$MemoryDump;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryDump"
.end annotation


# static fields
.field public static final blacklist ARM_MTE_METADATA:J = 0x10b00000006L

.field public static final blacklist BEGIN_ADDRESS:J = 0x10400000003L

.field public static final blacklist MAPPING_NAME:J = 0x10900000002L

.field public static final blacklist MEMORY:J = 0x10c00000004L

.field public static final blacklist REGISTER_NAME:J = 0x10900000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

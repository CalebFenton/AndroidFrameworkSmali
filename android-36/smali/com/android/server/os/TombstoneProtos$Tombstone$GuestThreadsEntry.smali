.class public final Lcom/android/server/os/TombstoneProtos$Tombstone$GuestThreadsEntry;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos$Tombstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GuestThreadsEntry"
.end annotation


# static fields
.field public static final blacklist KEY:J = 0x10d00000001L

.field public static final blacklist VALUE:J = 0x10b00000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos$Tombstone;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/os/TombstoneProtos$Tombstone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

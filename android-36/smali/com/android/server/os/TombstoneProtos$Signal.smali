.class public final Lcom/android/server/os/TombstoneProtos$Signal;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Signal"
.end annotation


# static fields
.field public static final blacklist CODE:J = 0x10500000003L

.field public static final blacklist CODE_NAME:J = 0x10900000004L

.field public static final blacklist FAULT_ADDRESS:J = 0x10400000009L

.field public static final blacklist FAULT_ADJACENT_METADATA:J = 0x10b0000000aL

.field public static final blacklist HAS_FAULT_ADDRESS:J = 0x10800000008L

.field public static final blacklist HAS_SENDER:J = 0x10800000005L

.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist NUMBER:J = 0x10500000001L

.field public static final blacklist SENDER_PID:J = 0x10500000007L

.field public static final blacklist SENDER_UID:J = 0x10500000006L


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

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

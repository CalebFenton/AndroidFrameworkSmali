.class public final Lcom/android/server/os/TombstoneProtos$FD;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FD"
.end annotation


# static fields
.field public static final blacklist FD:J = 0x10500000001L

.field public static final blacklist OWNER:J = 0x10900000003L

.field public static final blacklist PATH:J = 0x10900000002L

.field public static final blacklist TAG:J = 0x10400000004L


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

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

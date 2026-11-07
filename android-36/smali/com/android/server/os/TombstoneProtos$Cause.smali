.class public final Lcom/android/server/os/TombstoneProtos$Cause;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Cause"
.end annotation


# static fields
.field public static final blacklist HUMAN_READABLE:J = 0x10900000001L

.field public static final blacklist MEMORY_ERROR:J = 0x10b00000002L


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

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

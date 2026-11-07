.class public Landroid/net/connectivity/com/android/net/module/util/BpfDump$Dependencies;
.super Ljava/lang/Object;
.source "BpfDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/BpfDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist access(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 141
    invoke-static {p1, p2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

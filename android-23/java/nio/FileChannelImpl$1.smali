.class final Ljava/nio/FileChannelImpl$1;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lock1"    # Ljava/lang/Object;
    .param p2, "lock2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    check-cast p1, Ljava/nio/channels/FileLock;

    #@2
    .end local p1    # "lock1":Ljava/lang/Object;
    check-cast p2, Ljava/nio/channels/FileLock;

    #@4
    .end local p2    # "lock2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl$1;->compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I
    .locals 5
    .param p1, "lock1"    # Ljava/nio/channels/FileLock;
    .param p2, "lock2"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@3
    move-result-wide v0

    #@4
    .line 50
    .local v0, "position1":J
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->position()J

    #@7
    move-result-wide v2

    #@8
    .line 51
    .local v2, "position2":J
    cmp-long v4, v0, v2

    #@a
    if-lez v4, :cond_0

    #@c
    const/4 v4, 0x1

    #@d
    :goto_0
    return v4

    #@e
    :cond_0
    cmp-long v4, v0, v2

    #@10
    if-gez v4, :cond_1

    #@12
    const/4 v4, -0x1

    #@13
    goto :goto_0

    #@14
    :cond_1
    const/4 v4, 0x0

    #@15
    goto :goto_0
.end method

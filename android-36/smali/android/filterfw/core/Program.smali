.class public abstract Landroid/filterfw/core/Program;
.super Ljava/lang/Object;
.source "Program.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getHostValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public greylist process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "input"    # Landroid/filterfw/core/Frame;
    .param p2, "output"    # Landroid/filterfw/core/Frame;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/filterfw/core/Frame;

    .line 33
    .local v0, "inputs":[Landroid/filterfw/core/Frame;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 34
    invoke-virtual {p0, v0, p2}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 35
    return-void
.end method

.method public abstract greylist process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
.end method

.method public greylist-max-o reset()V
    .registers 1

    .line 43
    return-void
.end method

.method public abstract greylist setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

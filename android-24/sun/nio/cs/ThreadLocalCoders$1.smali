.class final Lsun/nio/cs/ThreadLocalCoders$1;
.super Lsun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/cs/ThreadLocalCoders$1;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/cs/ThreadLocalCoders$1;->-assertionsDisabled:Z

    #@b
    .line 89
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "$anonymous0"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    check-cast p1, Ljava/lang/String;

    #@6
    .end local p1    # "name":Ljava/lang/Object;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 100
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/nio/charset/Charset;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 101
    check-cast p1, Ljava/nio/charset/Charset;

    #@15
    .end local p1    # "name":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 102
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_1
    sget-boolean v0, Lsun/nio/cs/ThreadLocalCoders$1;->-assertionsDisabled:Z

    #@1c
    if-nez v0, :cond_2

    #@1e
    new-instance v0, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@23
    throw v0

    #@24
    .line 103
    :cond_2
    const/4 v0, 0x0

    #@25
    return-object v0
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 91
    instance-of v0, p2, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 92
    check-cast p1, Ljava/nio/charset/CharsetDecoder;

    #@6
    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 93
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/nio/charset/Charset;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 94
    check-cast p1, Ljava/nio/charset/CharsetDecoder;

    #@19
    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    return v0

    #@22
    .line 95
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    #@23
    return v0
.end method

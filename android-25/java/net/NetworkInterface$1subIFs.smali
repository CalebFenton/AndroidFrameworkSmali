.class Ljava/net/NetworkInterface$1subIFs;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "subIFs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "this$0"    # Ljava/net/NetworkInterface;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 188
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    #@8
    .line 190
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    #@0
    .prologue
    .line 202
    iget v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    #@2
    iget-object v1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    #@4
    invoke-static {v1}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    #@7
    move-result-object v1

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1subIFs;->nextElement()Ljava/net/NetworkInterface;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/net/NetworkInterface;
    .locals 3

    #@0
    .prologue
    .line 194
    iget v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    #@2
    iget-object v1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    #@4
    invoke-static {v1}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    #@7
    move-result-object v1

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 195
    iget-object v0, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    #@d
    invoke-static {v0}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    #@10
    move-result-object v0

    #@11
    iget v1, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    #@13
    add-int/lit8 v2, v1, 0x1

    #@15
    iput v2, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    #@17
    aget-object v0, v0, v1

    #@19
    return-object v0

    #@1a
    .line 197
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    #@1c
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@1f
    throw v0
.end method

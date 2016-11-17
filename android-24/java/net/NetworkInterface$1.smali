.class final Ljava/net/NetworkInterface$1;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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

.field final synthetic val$netifs:[Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>([Ljava/net/NetworkInterface;)V
    .locals 1
    .param p1, "val$netifs"    # [Ljava/net/NetworkInterface;

    #@0
    .prologue
    .line 339
    iput-object p1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 340
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/net/NetworkInterface$1;->i:I

    #@8
    .line 339
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 351
    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Ljava/net/NetworkInterface$1;->i:I

    #@7
    iget-object v2, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@9
    array-length v2, v2

    #@a
    if-ge v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1;->nextElement()Ljava/net/NetworkInterface;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/net/NetworkInterface;
    .locals 4

    #@0
    .prologue
    .line 342
    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget v1, p0, Ljava/net/NetworkInterface$1;->i:I

    #@6
    iget-object v2, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@8
    array-length v2, v2

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 343
    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    #@d
    iget v2, p0, Ljava/net/NetworkInterface$1;->i:I

    #@f
    add-int/lit8 v3, v2, 0x1

    #@11
    iput v3, p0, Ljava/net/NetworkInterface$1;->i:I

    #@13
    aget-object v0, v1, v2

    #@15
    .line 344
    .local v0, "netif":Ljava/net/NetworkInterface;
    return-object v0

    #@16
    .line 346
    .end local v0    # "netif":Ljava/net/NetworkInterface;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@18
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@1b
    throw v1
.end method

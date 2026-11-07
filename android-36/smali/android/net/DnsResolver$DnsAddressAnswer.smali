.class Landroid/net/DnsResolver$DnsAddressAnswer;
.super Landroid/net/connectivity/com/android/net/module/util/DnsPacket;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsAddressAnswer"
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "DnsResolver.DnsAddressAnswer"


# instance fields
.field private final blacklist mQueryType:I


# direct methods
.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 553
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket;-><init>([B)V

    .line 554
    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2f

    .line 557
    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v0

    if-eqz v0, :cond_27

    .line 561
    iget-object v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mRecords:[Ljava/util/List;

    aget-object v0, v0, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;

    iget v0, v0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    iput v0, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mQueryType:I

    .line 562
    return-void

    .line 558
    :cond_27
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "No question found"

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_2f
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Not an answer packet"

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAddresses()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mHeader:Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 568
    :cond_f
    iget-object v1, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mRecords:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;

    .line 570
    .local v3, "ansSec":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    iget v4, v3, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    .line 571
    .local v4, "nsType":I
    iget v5, p0, Landroid/net/DnsResolver$DnsAddressAnswer;->mQueryType:I

    if-ne v4, v5, :cond_17

    if-eq v4, v2, :cond_30

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_30

    .line 572
    goto :goto_17

    .line 575
    :cond_30
    :try_start_30
    invoke-virtual {v3}, Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_30 .. :try_end_3b} :catch_3c

    .line 580
    goto :goto_3d

    .line 576
    :catch_3c
    move-exception v5

    .line 581
    .end local v3    # "ansSec":Landroid/net/connectivity/com/android/net/module/util/DnsPacket$DnsRecord;
    .end local v4    # "nsType":I
    :goto_3d
    goto :goto_17

    .line 582
    :cond_3e
    return-object v0
.end method

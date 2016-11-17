.class final Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    .line 479
    .local v5, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 480
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v8

    #@e
    if-lez v8, :cond_0

    #@10
    .line 481
    new-instance v7, Ljava/util/Locale;

    #@12
    invoke-direct {v7, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    .line 483
    .local v7, "locale":Ljava/util/Locale;
    :goto_0
    new-instance v1, Landroid/location/Address;

    #@17
    invoke-direct {v1, v7}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    #@1a
    .line 485
    .local v1, "a":Landroid/location/Address;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    .line 486
    .local v0, "N":I
    if-lez v0, :cond_1

    #@20
    .line 487
    new-instance v8, Ljava/util/HashMap;

    #@22
    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    #@25
    invoke-static {v1, v8}, Landroid/location/Address;->-set0(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    #@28
    .line 488
    const/4 v3, 0x0

    #@29
    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    #@2b
    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v4

    #@2f
    .line 490
    .local v4, "index":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v6

    #@33
    .line 491
    .local v6, "line":Ljava/lang/String;
    invoke-static {v1}, Landroid/location/Address;->-get0(Landroid/location/Address;)Ljava/util/HashMap;

    #@36
    move-result-object v8

    #@37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v8, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 493
    invoke-static {v1}, Landroid/location/Address;->-get3(Landroid/location/Address;)I

    #@41
    move-result v8

    #@42
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    #@45
    move-result v8

    #@46
    .line 492
    invoke-static {v1, v8}, Landroid/location/Address;->-set11(Landroid/location/Address;I)I

    #@49
    .line 488
    add-int/lit8 v3, v3, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 482
    .end local v0    # "N":I
    .end local v1    # "a":Landroid/location/Address;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    :cond_0
    new-instance v7, Ljava/util/Locale;

    #@4e
    invoke-direct {v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@51
    .restart local v7    # "locale":Ljava/util/Locale;
    goto :goto_0

    #@52
    .line 496
    .restart local v0    # "N":I
    .restart local v1    # "a":Landroid/location/Address;
    :cond_1
    const/4 v8, 0x0

    #@53
    invoke-static {v1, v8}, Landroid/location/Address;->-set0(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    #@56
    .line 497
    const/4 v8, -0x1

    #@57
    invoke-static {v1, v8}, Landroid/location/Address;->-set11(Landroid/location/Address;I)I

    #@5a
    .line 499
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v8

    #@5e
    invoke-static {v1, v8}, Landroid/location/Address;->-set5(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@61
    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v8

    #@65
    invoke-static {v1, v8}, Landroid/location/Address;->-set1(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@68
    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6b
    move-result-object v8

    #@6c
    invoke-static {v1, v8}, Landroid/location/Address;->-set15(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@6f
    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    invoke-static {v1, v8}, Landroid/location/Address;->-set9(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@76
    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@79
    move-result-object v8

    #@7a
    invoke-static {v1, v8}, Landroid/location/Address;->-set16(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@7d
    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    invoke-static {v1, v8}, Landroid/location/Address;->-set18(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@84
    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-static {v1, v8}, Landroid/location/Address;->-set17(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@8b
    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8e
    move-result-object v8

    #@8f
    invoke-static {v1, v8}, Landroid/location/Address;->-set14(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@92
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-static {v1, v8}, Landroid/location/Address;->-set13(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@99
    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9c
    move-result-object v8

    #@9d
    invoke-static {v1, v8}, Landroid/location/Address;->-set2(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@a0
    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a3
    move-result-object v8

    #@a4
    invoke-static {v1, v8}, Landroid/location/Address;->-set3(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@a7
    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@aa
    move-result v8

    #@ab
    if-nez v8, :cond_5

    #@ad
    move v8, v9

    #@ae
    :goto_2
    invoke-static {v1, v8}, Landroid/location/Address;->-set6(Landroid/location/Address;Z)Z

    #@b1
    .line 511
    invoke-static {v1}, Landroid/location/Address;->-get1(Landroid/location/Address;)Z

    #@b4
    move-result v8

    #@b5
    if-eqz v8, :cond_3

    #@b7
    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@ba
    move-result-wide v12

    #@bb
    invoke-static {v1, v12, v13}, Landroid/location/Address;->-set8(Landroid/location/Address;D)D

    #@be
    .line 514
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c1
    move-result v8

    #@c2
    if-nez v8, :cond_6

    #@c4
    :goto_3
    invoke-static {v1, v9}, Landroid/location/Address;->-set7(Landroid/location/Address;Z)Z

    #@c7
    .line 515
    invoke-static {v1}, Landroid/location/Address;->-get2(Landroid/location/Address;)Z

    #@ca
    move-result v8

    #@cb
    if-eqz v8, :cond_4

    #@cd
    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@d0
    move-result-wide v8

    #@d1
    invoke-static {v1, v8, v9}, Landroid/location/Address;->-set10(Landroid/location/Address;D)D

    #@d4
    .line 518
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    invoke-static {v1, v8}, Landroid/location/Address;->-set12(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@db
    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@de
    move-result-object v8

    #@df
    invoke-static {v1, v8}, Landroid/location/Address;->-set19(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    #@e2
    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@e5
    move-result-object v8

    #@e6
    invoke-static {v1, v8}, Landroid/location/Address;->-set4(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@e9
    .line 521
    return-object v1

    #@ea
    :cond_5
    move v8, v10

    #@eb
    .line 510
    goto :goto_2

    #@ec
    :cond_6
    move v9, v10

    #@ed
    .line 514
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/Address;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 525
    new-array v0, p1, [Landroid/location/Address;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 524
    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

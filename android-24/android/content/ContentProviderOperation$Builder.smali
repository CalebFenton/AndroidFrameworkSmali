.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExpectedCount:Ljava/lang/Integer;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field private mValuesBackReferences:Landroid/content/ContentValues;

.field private mYieldAllowed:Z


# direct methods
.method static synthetic -get0(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    #@2
    return v0
.end method

.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 501
    if-nez p2, :cond_0

    #@5
    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "uri must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 504
    :cond_0
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@10
    .line 505
    iput-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    #@12
    .line 500
    return-void
.end method

.method synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 510
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@3
    const/4 v1, 0x2

    #@4
    if-ne v0, v1, :cond_2

    #@6
    .line 511
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@c
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_2

    #@12
    .line 512
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@18
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 513
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "Empty values"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 516
    :cond_2
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@29
    const/4 v1, 0x4

    #@2a
    if-ne v0, v1, :cond_5

    #@2c
    .line 517
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@2e
    if-eqz v0, :cond_3

    #@30
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@32
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    #@35
    move-result v0

    #@36
    if-nez v0, :cond_5

    #@38
    .line 518
    :cond_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@3e
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    #@41
    move-result v0

    #@42
    if-nez v0, :cond_5

    #@44
    .line 519
    :cond_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    #@46
    if-nez v0, :cond_5

    #@48
    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    const-string/jumbo v1, "Empty values"

    #@4d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0

    #@51
    .line 523
    :cond_5
    new-instance v0, Landroid/content/ContentProviderOperation;

    #@53
    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation;)V

    #@56
    return-object v0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 672
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 674
    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    #@14
    .line 673
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 676
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    #@1e
    .line 677
    return-object p0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 651
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@9
    const/4 v1, 0x3

    #@a
    if-eq v0, v1, :cond_0

    #@c
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@e
    const/4 v1, 0x4

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    .line 653
    const-string/jumbo v1, "only updates, deletes, and asserts can have selections"

    #@16
    .line 652
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 655
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    #@1c
    .line 656
    if-nez p2, :cond_1

    #@1e
    .line 657
    iput-object v3, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    #@20
    .line 662
    :goto_0
    return-object p0

    #@21
    .line 659
    :cond_1
    array-length v0, p2

    #@22
    new-array v0, v0, [Ljava/lang/String;

    #@24
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    #@26
    .line 660
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    #@28
    array-length v1, p2

    #@29
    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    goto :goto_0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "selectionArgIndex"    # I
    .param p2, "previousResult"    # I

    #@0
    .prologue
    .line 570
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x3

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "only updates, deletes, and asserts can have selection back-references"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 574
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 575
    new-instance v0, Ljava/util/HashMap;

    #@1e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@21
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@23
    .line 577
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    #@25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 578
    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 610
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "only inserts and updates can have values"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 613
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 614
    new-instance v0, Landroid/content/ContentValues;

    #@1e
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@21
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@23
    .line 616
    :cond_1
    if-nez p2, :cond_2

    #@25
    .line 617
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@27
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    #@2a
    .line 639
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    #@2b
    .line 618
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 619
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@31
    check-cast p2, Ljava/lang/String;

    #@33
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 620
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Byte;

    #@39
    if-eqz v0, :cond_4

    #@3b
    .line 621
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@3d
    check-cast p2, Ljava/lang/Byte;

    #@3f
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    #@42
    goto :goto_0

    #@43
    .line 622
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    #@45
    if-eqz v0, :cond_5

    #@47
    .line 623
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@49
    check-cast p2, Ljava/lang/Short;

    #@4b
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    #@4e
    goto :goto_0

    #@4f
    .line 624
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    #@51
    if-eqz v0, :cond_6

    #@53
    .line 625
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@55
    check-cast p2, Ljava/lang/Integer;

    #@57
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    goto :goto_0

    #@5b
    .line 626
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    #@5d
    if-eqz v0, :cond_7

    #@5f
    .line 627
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@61
    check-cast p2, Ljava/lang/Long;

    #@63
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@66
    goto :goto_0

    #@67
    .line 628
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    #@69
    if-eqz v0, :cond_8

    #@6b
    .line 629
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@6d
    check-cast p2, Ljava/lang/Float;

    #@6f
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    #@72
    goto :goto_0

    #@73
    .line 630
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/Double;

    #@75
    if-eqz v0, :cond_9

    #@77
    .line 631
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@79
    check-cast p2, Ljava/lang/Double;

    #@7b
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    #@7e
    goto :goto_0

    #@7f
    .line 632
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    #@81
    if-eqz v0, :cond_a

    #@83
    .line 633
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@85
    check-cast p2, Ljava/lang/Boolean;

    #@87
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@8a
    goto :goto_0

    #@8b
    .line 634
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, [B

    #@8d
    if-eqz v0, :cond_b

    #@8f
    .line 635
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@91
    check-cast p2, [B

    #@93
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@96
    goto :goto_0

    #@97
    .line 637
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@99
    new-instance v1, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v2, "bad value type: "

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v1

    #@b5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b8
    throw v0
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "previousResult"    # I

    #@0
    .prologue
    .line 552
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 554
    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    #@14
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 556
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 557
    new-instance v0, Landroid/content/ContentValues;

    #@1e
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@21
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@23
    .line 559
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@2c
    .line 560
    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "backReferences"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 536
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 538
    const-string/jumbo v1, "only inserts, updates, and asserts can have value back-references"

    #@14
    .line 537
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 540
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    #@1a
    .line 541
    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    #@0
    .prologue
    .line 589
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_0

    #@a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    #@c
    const/4 v1, 0x4

    #@d
    if-eq v0, v1, :cond_0

    #@f
    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 591
    const-string/jumbo v1, "only inserts, updates, and asserts can have values"

    #@14
    .line 590
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 593
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 594
    new-instance v0, Landroid/content/ContentValues;

    #@1e
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@21
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@23
    .line 596
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    #@25
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    #@28
    .line 597
    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0
    .param p1, "yieldAllowed"    # Z

    #@0
    .prologue
    .line 687
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    #@2
    .line 688
    return-object p0
.end method

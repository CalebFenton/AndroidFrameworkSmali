.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    new-instance v0, Landroid/os/WorkSource;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    #@6
    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@8
    .line 696
    new-instance v0, Landroid/os/WorkSource$1;

    #@a
    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    #@d
    .line 695
    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@6
    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 63
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    #@7
    .line 64
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [I

    #@a
    aput p1, v0, v1

    #@c
    aput v1, v0, v2

    #@e
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@10
    .line 65
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@13
    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 70
    if-nez p2, :cond_0

    #@9
    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "Name can\'t be null"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 73
    :cond_0
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    #@14
    .line 74
    new-array v0, v3, [I

    #@16
    aput p1, v0, v1

    #@18
    aput v1, v0, v2

    #@1a
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@1c
    .line 75
    new-array v0, v3, [Ljava/lang/String;

    #@1e
    aput-object p2, v0, v1

    #@20
    aput-object v4, v0, v2

    #@22
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@24
    .line 69
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@9
    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@f
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@15
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "orig"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    if-nez p1, :cond_0

    #@6
    .line 48
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@9
    .line 49
    return-void

    #@a
    .line 51
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    #@c
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@e
    .line 52
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 53
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    #@14
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [I

    #@1a
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@1c
    .line 54
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@1e
    if-eqz v0, :cond_1

    #@20
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, [Ljava/lang/String;

    #@28
    :goto_0
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@2a
    .line 46
    :goto_1
    return-void

    #@2b
    :cond_1
    move-object v0, v1

    #@2c
    .line 54
    goto :goto_0

    #@2d
    .line 56
    :cond_2
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@2f
    .line 57
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@31
    goto :goto_1
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    #@0
    .prologue
    .line 444
    if-nez p0, :cond_0

    #@2
    .line 445
    new-instance v0, Landroid/os/WorkSource;

    #@4
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    #@7
    return-object v0

    #@8
    .line 447
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@a
    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    #@d
    .line 448
    return-object p0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 536
    if-nez p0, :cond_0

    #@2
    .line 537
    new-instance v0, Landroid/os/WorkSource;

    #@4
    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    #@7
    return-object v0

    #@8
    .line 539
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@a
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    #@d
    .line 540
    return-object p0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    #@0
    .prologue
    .line 528
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@2
    aget v1, v1, p2

    #@4
    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    #@6
    aget v2, v2, p3

    #@8
    sub-int v0, v1, v2

    #@a
    .line 529
    .local v0, "diff":I
    if-eqz v0, :cond_0

    #@c
    .line 530
    return v0

    #@d
    .line 532
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@f
    aget-object v1, v1, p2

    #@11
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@13
    aget-object v2, v2, p3

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method private insert(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 607
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 608
    const/4 v1, 0x4

    #@6
    new-array v1, v1, [I

    #@8
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@a
    .line 609
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@c
    aput p2, v1, v3

    #@e
    .line 610
    const/4 v1, 0x1

    #@f
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    #@11
    .line 605
    :goto_0
    return-void

    #@12
    .line 611
    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@14
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@16
    array-length v2, v2

    #@17
    if-lt v1, v2, :cond_3

    #@19
    .line 612
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@1b
    mul-int/lit8 v1, v1, 0x3

    #@1d
    div-int/lit8 v1, v1, 0x2

    #@1f
    new-array v0, v1, [I

    #@21
    .line 613
    .local v0, "newuids":[I
    if-lez p1, :cond_1

    #@23
    .line 614
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@25
    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@28
    .line 616
    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@2a
    if-ge p1, v1, :cond_2

    #@2c
    .line 617
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@2e
    add-int/lit8 v2, p1, 0x1

    #@30
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    #@32
    sub-int/2addr v3, p1

    #@33
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@36
    .line 619
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@38
    .line 620
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@3a
    aput p2, v1, p1

    #@3c
    .line 621
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@3e
    add-int/lit8 v1, v1, 0x1

    #@40
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    #@42
    goto :goto_0

    #@43
    .line 623
    .end local v0    # "newuids":[I
    :cond_3
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@45
    if-ge p1, v1, :cond_4

    #@47
    .line 624
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@49
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@4b
    add-int/lit8 v3, p1, 0x1

    #@4d
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    #@4f
    sub-int/2addr v4, p1

    #@50
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@53
    .line 626
    :cond_4
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@55
    aput p2, v1, p1

    #@57
    .line 627
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@59
    add-int/lit8 v1, v1, 0x1

    #@5b
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    #@5d
    goto :goto_0
.end method

.method private insert(IILjava/lang/String;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    .line 632
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@4
    if-nez v2, :cond_0

    #@6
    .line 633
    new-array v2, v3, [I

    #@8
    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@a
    .line 634
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@c
    aput p2, v2, v4

    #@e
    .line 635
    new-array v2, v3, [Ljava/lang/String;

    #@10
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@12
    .line 636
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@14
    aput-object p3, v2, v4

    #@16
    .line 637
    const/4 v2, 0x1

    #@17
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    #@19
    .line 631
    :goto_0
    return-void

    #@1a
    .line 638
    :cond_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@1c
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@1e
    array-length v3, v3

    #@1f
    if-lt v2, v3, :cond_3

    #@21
    .line 639
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@23
    mul-int/lit8 v2, v2, 0x3

    #@25
    div-int/lit8 v2, v2, 0x2

    #@27
    new-array v1, v2, [I

    #@29
    .line 640
    .local v1, "newuids":[I
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@2b
    mul-int/lit8 v2, v2, 0x3

    #@2d
    div-int/lit8 v2, v2, 0x2

    #@2f
    new-array v0, v2, [Ljava/lang/String;

    #@31
    .line 641
    .local v0, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_1

    #@33
    .line 642
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@35
    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@38
    .line 643
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@3a
    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 645
    :cond_1
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@3f
    if-ge p1, v2, :cond_2

    #@41
    .line 646
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@43
    add-int/lit8 v3, p1, 0x1

    #@45
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    #@47
    sub-int/2addr v4, p1

    #@48
    invoke-static {v2, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@4b
    .line 647
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@4d
    add-int/lit8 v3, p1, 0x1

    #@4f
    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    #@51
    sub-int/2addr v4, p1

    #@52
    invoke-static {v2, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@55
    .line 649
    :cond_2
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@57
    .line 650
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@59
    .line 651
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@5b
    aput p2, v2, p1

    #@5d
    .line 652
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@5f
    aput-object p3, v2, p1

    #@61
    .line 653
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@63
    add-int/lit8 v2, v2, 0x1

    #@65
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    #@67
    goto :goto_0

    #@68
    .line 655
    .end local v0    # "newnames":[Ljava/lang/String;
    .end local v1    # "newuids":[I
    :cond_3
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@6a
    if-ge p1, v2, :cond_4

    #@6c
    .line 656
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@6e
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@70
    add-int/lit8 v4, p1, 0x1

    #@72
    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    #@74
    sub-int/2addr v5, p1

    #@75
    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@78
    .line 657
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@7a
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@7c
    add-int/lit8 v4, p1, 0x1

    #@7e
    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    #@80
    sub-int/2addr v5, p1

    #@81
    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@84
    .line 659
    :cond_4
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@86
    aput p2, v2, p1

    #@88
    .line 660
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@8a
    aput-object p3, v2, p1

    #@8c
    .line 661
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@8e
    add-int/lit8 v2, v2, 0x1

    #@90
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    #@92
    goto :goto_0
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@2
    .line 359
    .local v0, "N1":I
    iget-object v5, p0, Landroid/os/WorkSource;->mUids:[I

    #@4
    .line 360
    .local v5, "uids1":[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    #@6
    .line 361
    .local v1, "N2":I
    iget-object v6, p1, Landroid/os/WorkSource;->mUids:[I

    #@8
    .line 362
    .local v6, "uids2":[I
    const/4 v2, 0x0

    #@9
    .line 363
    .local v2, "changed":Z
    const/4 v3, 0x0

    #@a
    .local v3, "i1":I
    const/4 v4, 0x0

    #@b
    .line 365
    .local v4, "i2":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    if-ge v4, v1, :cond_3

    #@f
    .line 368
    aget v7, v6, v4

    #@11
    aget v8, v5, v3

    #@13
    if-ne v7, v8, :cond_1

    #@15
    .line 371
    add-int/lit8 v0, v0, -0x1

    #@17
    .line 372
    const/4 v2, 0x1

    #@18
    .line 373
    if-ge v3, v0, :cond_0

    #@1a
    add-int/lit8 v7, v3, 0x1

    #@1c
    sub-int v8, v0, v3

    #@1e
    invoke-static {v5, v7, v5, v3, v8}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 374
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 375
    :cond_1
    aget v7, v6, v4

    #@26
    aget v8, v5, v3

    #@28
    if-le v7, v8, :cond_2

    #@2a
    .line 377
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 380
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 384
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@32
    .line 386
    return v2
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 390
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@2
    .line 391
    .local v0, "N1":I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    #@4
    .line 392
    .local v7, "uids1":[I
    iget-object v5, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@6
    .line 393
    .local v5, "names1":[Ljava/lang/String;
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    #@8
    .line 394
    .local v1, "N2":I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    #@a
    .line 395
    .local v8, "uids2":[I
    iget-object v6, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@c
    .line 396
    .local v6, "names2":[Ljava/lang/String;
    const/4 v2, 0x0

    #@d
    .line 397
    .local v2, "changed":Z
    const/4 v3, 0x0

    #@e
    .local v3, "i1":I
    const/4 v4, 0x0

    #@f
    .line 399
    .local v4, "i2":I
    :goto_0
    if-ge v3, v0, :cond_4

    #@11
    if-ge v4, v1, :cond_4

    #@13
    .line 402
    aget v9, v8, v4

    #@15
    aget v10, v7, v3

    #@17
    if-ne v9, v10, :cond_1

    #@19
    aget-object v9, v6, v4

    #@1b
    aget-object v10, v5, v3

    #@1d
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_1

    #@23
    .line 405
    add-int/lit8 v0, v0, -0x1

    #@25
    .line 406
    const/4 v2, 0x1

    #@26
    .line 407
    if-ge v3, v0, :cond_0

    #@28
    .line 408
    add-int/lit8 v9, v3, 0x1

    #@2a
    sub-int v10, v0, v3

    #@2c
    invoke-static {v7, v9, v7, v3, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@2f
    .line 409
    add-int/lit8 v9, v3, 0x1

    #@31
    sub-int v10, v0, v3

    #@33
    invoke-static {v5, v9, v5, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@36
    .line 411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .line 412
    :cond_1
    aget v9, v8, v4

    #@3b
    aget v10, v7, v3

    #@3d
    if-gt v9, v10, :cond_2

    #@3f
    .line 413
    aget v9, v8, v4

    #@41
    aget v10, v7, v3

    #@43
    if-ne v9, v10, :cond_3

    #@45
    aget-object v9, v6, v4

    #@47
    aget-object v10, v5, v3

    #@49
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4c
    move-result v9

    #@4d
    if-lez v9, :cond_3

    #@4f
    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@51
    .line 413
    goto :goto_0

    #@52
    .line 418
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@54
    goto :goto_0

    #@55
    .line 422
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@57
    .line 424
    return v2
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    #@0
    .prologue
    .line 428
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 429
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 431
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@f
    if-lez v0, :cond_1

    #@11
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@13
    if-nez v0, :cond_1

    #@15
    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Other "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, " has names, but target "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 433
    const-string/jumbo v2, " does not"

    #@35
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 435
    :cond_1
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    #@43
    if-lez v0, :cond_2

    #@45
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@47
    if-nez v0, :cond_2

    #@49
    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4b
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, "Target "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v2, " has names, but other "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    .line 437
    const-string/jumbo v2, " does not"

    #@69
    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v0

    #@75
    .line 439
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    #@78
    move-result v0

    #@79
    return v0
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    #@0
    .prologue
    .line 544
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    #@2
    .line 545
    .local v0, "N2":I
    iget-object v7, p1, Landroid/os/WorkSource;->mUids:[I

    #@4
    .line 546
    .local v7, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@6
    .line 547
    .local v5, "names2":[Ljava/lang/String;
    const/4 v1, 0x0

    #@7
    .line 548
    .local v1, "changed":Z
    const/4 v3, 0x0

    #@8
    .local v3, "i1":I
    const/4 v4, 0x0

    #@9
    .line 551
    .local v4, "i2":I
    :cond_0
    :goto_0
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    #@b
    if-lt v3, v8, :cond_1

    #@d
    if-ge v4, v0, :cond_b

    #@f
    .line 554
    :cond_1
    const/4 v2, -0x1

    #@10
    .line 555
    .local v2, "diff":I
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    #@12
    if-ge v3, v8, :cond_2

    #@14
    if-ge v4, v0, :cond_4

    #@16
    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    #@19
    move-result v2

    #@1a
    if-lez v2, :cond_4

    #@1c
    .line 557
    :cond_2
    const/4 v1, 0x1

    #@1d
    .line 560
    aget v8, v7, v4

    #@1f
    aget-object v9, v5, v4

    #@21
    invoke-direct {p0, v3, v8, v9}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    #@24
    .line 561
    if-eqz p3, :cond_3

    #@26
    .line 562
    sget-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@28
    aget v9, v7, v4

    #@2a
    aget-object v10, v5, v4

    #@2c
    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    #@2f
    move-result-object v8

    #@30
    sput-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@32
    .line 564
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@34
    .line 565
    add-int/lit8 v4, v4, 0x1

    #@36
    .line 555
    goto :goto_0

    #@37
    .line 567
    :cond_4
    if-nez p2, :cond_6

    #@39
    .line 569
    if-ge v4, v0, :cond_5

    #@3b
    if-nez v2, :cond_5

    #@3d
    .line 570
    add-int/lit8 v4, v4, 0x1

    #@3f
    .line 572
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_0

    #@42
    .line 575
    :cond_6
    move v6, v3

    #@43
    .line 576
    .local v6, "start":I
    :goto_1
    if-gez v2, :cond_7

    #@45
    .line 579
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@47
    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    #@49
    aget v9, v9, v3

    #@4b
    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@4d
    aget-object v10, v10, v3

    #@4f
    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    #@52
    move-result-object v8

    #@53
    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@55
    .line 580
    add-int/lit8 v3, v3, 0x1

    #@57
    .line 581
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    #@59
    if-lt v3, v8, :cond_9

    #@5b
    .line 586
    :cond_7
    if-ge v6, v3, :cond_8

    #@5d
    .line 587
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    #@5f
    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    #@61
    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    #@63
    sub-int/2addr v10, v3

    #@64
    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@67
    .line 588
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@69
    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@6b
    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    #@6d
    sub-int/2addr v10, v3

    #@6e
    invoke-static {v8, v3, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@71
    .line 589
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    #@73
    sub-int v9, v3, v6

    #@75
    sub-int/2addr v8, v9

    #@76
    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    #@78
    .line 590
    move v3, v6

    #@79
    .line 593
    :cond_8
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    #@7b
    if-ge v3, v8, :cond_0

    #@7d
    if-nez v2, :cond_0

    #@7f
    .line 595
    add-int/lit8 v3, v3, 0x1

    #@81
    .line 596
    add-int/lit8 v4, v4, 0x1

    #@83
    goto :goto_0

    #@84
    .line 584
    :cond_9
    if-ge v4, v0, :cond_a

    #@86
    invoke-direct {p0, p1, v3, v4}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    #@89
    move-result v2

    #@8a
    goto :goto_1

    #@8b
    :cond_a
    const/4 v2, -0x1

    #@8c
    goto :goto_1

    #@8d
    .line 602
    .end local v2    # "diff":I
    .end local v6    # "start":I
    :cond_b
    return v1
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 12
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 452
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@3
    .line 453
    .local v0, "N1":I
    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    #@5
    .line 454
    .local v7, "uids1":[I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    #@7
    .line 455
    .local v1, "N2":I
    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    #@9
    .line 456
    .local v8, "uids2":[I
    const/4 v2, 0x0

    #@a
    .line 457
    .local v2, "changed":Z
    const/4 v3, 0x0

    #@b
    .local v3, "i1":I
    const/4 v4, 0x0

    #@c
    .line 460
    .local v4, "i2":I
    :cond_0
    :goto_0
    if-lt v3, v0, :cond_1

    #@e
    if-ge v4, v1, :cond_f

    #@10
    .line 463
    :cond_1
    if-ge v3, v0, :cond_2

    #@12
    if-ge v4, v1, :cond_9

    #@14
    aget v9, v8, v4

    #@16
    aget v10, v7, v3

    #@18
    if-ge v9, v10, :cond_9

    #@1a
    .line 467
    :cond_2
    const/4 v2, 0x1

    #@1b
    .line 468
    if-nez v7, :cond_4

    #@1d
    .line 469
    const/4 v9, 0x4

    #@1e
    new-array v7, v9, [I

    #@20
    .line 470
    aget v9, v8, v4

    #@22
    aput v9, v7, v11

    #@24
    .line 481
    :goto_1
    if-eqz p3, :cond_3

    #@26
    .line 482
    sget-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@28
    aget v10, v8, v4

    #@2a
    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    #@2d
    move-result-object v9

    #@2e
    sput-object v9, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@30
    .line 484
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@32
    .line 485
    add-int/lit8 v3, v3, 0x1

    #@34
    .line 486
    add-int/lit8 v4, v4, 0x1

    #@36
    .line 463
    goto :goto_0

    #@37
    .line 471
    :cond_4
    array-length v9, v7

    #@38
    if-lt v0, v9, :cond_7

    #@3a
    .line 472
    array-length v9, v7

    #@3b
    mul-int/lit8 v9, v9, 0x3

    #@3d
    div-int/lit8 v9, v9, 0x2

    #@3f
    new-array v5, v9, [I

    #@41
    .line 473
    .local v5, "newuids":[I
    if-lez v3, :cond_5

    #@43
    invoke-static {v7, v11, v5, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@46
    .line 474
    :cond_5
    if-ge v3, v0, :cond_6

    #@48
    add-int/lit8 v9, v3, 0x1

    #@4a
    sub-int v10, v0, v3

    #@4c
    invoke-static {v7, v3, v5, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@4f
    .line 475
    :cond_6
    move-object v7, v5

    #@50
    .line 476
    aget v9, v8, v4

    #@52
    aput v9, v7, v3

    #@54
    goto :goto_1

    #@55
    .line 478
    .end local v5    # "newuids":[I
    :cond_7
    if-ge v3, v0, :cond_8

    #@57
    add-int/lit8 v9, v3, 0x1

    #@59
    sub-int v10, v0, v3

    #@5b
    invoke-static {v7, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@5e
    .line 479
    :cond_8
    aget v9, v8, v4

    #@60
    aput v9, v7, v3

    #@62
    goto :goto_1

    #@63
    .line 488
    :cond_9
    if-nez p2, :cond_b

    #@65
    .line 491
    if-ge v4, v1, :cond_a

    #@67
    aget v9, v8, v4

    #@69
    aget v10, v7, v3

    #@6b
    if-ne v9, v10, :cond_a

    #@6d
    .line 492
    add-int/lit8 v4, v4, 0x1

    #@6f
    .line 494
    :cond_a
    add-int/lit8 v3, v3, 0x1

    #@71
    goto :goto_0

    #@72
    .line 497
    :cond_b
    move v6, v3

    #@73
    .line 498
    .local v6, "start":I
    :goto_2
    if-ge v3, v0, :cond_d

    #@75
    if-ge v4, v1, :cond_c

    #@77
    aget v9, v8, v4

    #@79
    aget v10, v7, v3

    #@7b
    if-le v9, v10, :cond_d

    #@7d
    .line 500
    :cond_c
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@7f
    aget v10, v7, v3

    #@81
    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    #@84
    move-result-object v9

    #@85
    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@87
    .line 501
    add-int/lit8 v3, v3, 0x1

    #@89
    goto :goto_2

    #@8a
    .line 503
    :cond_d
    if-ge v6, v3, :cond_e

    #@8c
    .line 504
    sub-int v9, v0, v3

    #@8e
    invoke-static {v7, v3, v7, v6, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@91
    .line 505
    sub-int v9, v3, v6

    #@93
    sub-int/2addr v0, v9

    #@94
    .line 506
    move v3, v6

    #@95
    .line 509
    :cond_e
    if-ge v3, v0, :cond_0

    #@97
    if-ge v4, v1, :cond_0

    #@99
    aget v9, v8, v4

    #@9b
    aget v10, v7, v3

    #@9d
    if-ne v9, v10, :cond_0

    #@9f
    .line 511
    add-int/lit8 v3, v3, 0x1

    #@a1
    .line 512
    add-int/lit8 v4, v4, 0x1

    #@a3
    goto/16 :goto_0

    #@a5
    .line 518
    .end local v6    # "start":I
    :cond_f
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@a7
    .line 519
    iput-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    #@a9
    .line 521
    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 5
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 267
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@5
    if-gtz v1, :cond_0

    #@7
    .line 268
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@9
    .line 269
    invoke-direct {p0, v3, p1}, Landroid/os/WorkSource;->insert(II)V

    #@c
    .line 270
    return v4

    #@d
    .line 272
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Adding without name to named "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 275
    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@2d
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@2f
    invoke-static {v1, v3, v2, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    #@32
    move-result v0

    #@33
    .line 277
    .local v0, "i":I
    if-ltz v0, :cond_2

    #@35
    .line 278
    return v3

    #@36
    .line 280
    :cond_2
    neg-int v1, v0

    #@37
    add-int/lit8 v1, v1, -0x1

    #@39
    invoke-direct {p0, v1, p1}, Landroid/os/WorkSource;->insert(II)V

    #@3c
    .line 281
    return v4
.end method

.method public add(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 286
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@4
    if-gtz v2, :cond_0

    #@6
    .line 287
    invoke-direct {p0, v3, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    #@9
    .line 288
    return v4

    #@a
    .line 290
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@c
    if-nez v2, :cond_1

    #@e
    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Adding name to unnamed "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 294
    :cond_1
    const/4 v1, 0x0

    #@29
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@2b
    if-ge v1, v2, :cond_2

    #@2d
    .line 295
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@2f
    aget v2, v2, v1

    #@31
    if-le v2, p1, :cond_3

    #@33
    .line 308
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    #@36
    .line 309
    return v4

    #@37
    .line 298
    :cond_3
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@39
    aget v2, v2, v1

    #@3b
    if-ne v2, p1, :cond_4

    #@3d
    .line 299
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@3f
    aget-object v2, v2, v1

    #@41
    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@44
    move-result v0

    #@45
    .line 300
    .local v0, "diff":I
    if-gtz v0, :cond_2

    #@47
    .line 303
    if-nez v0, :cond_4

    #@49
    .line 304
    return v3

    #@4a
    .line 294
    .end local v0    # "diff":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 251
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@2
    monitor-enter v0

    #@3
    .line 252
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x0

    #@5
    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v1

    #@9
    monitor-exit v0

    #@a
    return v1

    #@b
    .line 251
    :catchall_0
    move-exception v1

    #@c
    monitor-exit v0

    #@d
    throw v1
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 314
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@2
    monitor-enter v1

    #@3
    .line 315
    const/4 v0, 0x0

    #@4
    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@6
    .line 316
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@8
    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    #@a
    const/4 v2, 0x0

    #@b
    aput p1, v0, v2

    #@d
    .line 317
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@f
    const/4 v2, 0x0

    #@10
    const/4 v3, 0x1

    #@11
    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    #@14
    .line 318
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    .line 314
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 258
    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@2
    monitor-enter v1

    #@3
    .line 259
    const/4 v0, 0x0

    #@4
    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@6
    .line 260
    const/4 v0, 0x0

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    #@b
    .line 261
    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 258
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@3
    .line 126
    return-void
.end method

.method public clearNames()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 106
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@3
    if-eqz v3, :cond_2

    #@5
    .line 107
    iput-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@7
    .line 109
    const/4 v0, 0x1

    #@8
    .line 110
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@a
    .line 111
    .local v1, "newNum":I
    const/4 v2, 0x1

    #@b
    .local v2, "sourceIndex":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    #@d
    if-ge v2, v3, :cond_1

    #@f
    .line 112
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@11
    aget v3, v3, v2

    #@13
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    #@15
    add-int/lit8 v5, v2, -0x1

    #@17
    aget v4, v4, v5

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    .line 113
    add-int/lit8 v1, v1, -0x1

    #@1d
    .line 111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 115
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@22
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    #@24
    aget v4, v4, v2

    #@26
    aput v4, v3, v0

    #@28
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 119
    :cond_1
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    #@2d
    .line 105
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    .end local v2    # "sourceIndex":I
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 667
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 155
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@3
    .line 156
    .local v0, "N":I
    iget v6, p1, Landroid/os/WorkSource;->mNum:I

    #@5
    if-eq v0, v6, :cond_0

    #@7
    .line 157
    return v8

    #@8
    .line 159
    :cond_0
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    #@a
    .line 160
    .local v4, "uids1":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mUids:[I

    #@c
    .line 161
    .local v5, "uids2":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@e
    .line 162
    .local v2, "names1":[Ljava/lang/String;
    iget-object v3, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@10
    .line 163
    .local v3, "names2":[Ljava/lang/String;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@13
    .line 164
    aget v6, v4, v1

    #@15
    aget v7, v5, v1

    #@17
    if-eq v6, v7, :cond_1

    #@19
    .line 165
    return v8

    #@1a
    .line 167
    :cond_1
    if-eqz v2, :cond_2

    #@1c
    if-eqz v3, :cond_2

    #@1e
    aget-object v6, v2, v1

    #@20
    aget-object v7, v3, v1

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_3

    #@28
    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 168
    :cond_3
    return v8

    #@2c
    .line 171
    :cond_4
    const/4 v6, 0x0

    #@2d
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 132
    instance-of v1, p1, Landroid/os/WorkSource;

    #@3
    if-eqz v1, :cond_0

    #@5
    check-cast p1, Landroid/os/WorkSource;

    #@7
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 96
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@7
    aget-object v0, v0, p1

    #@9
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 137
    const/4 v1, 0x0

    #@1
    .line 138
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 139
    shl-int/lit8 v2, v1, 0x4

    #@8
    ushr-int/lit8 v3, v1, 0x1c

    #@a
    or-int/2addr v2, v3

    #@b
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@d
    aget v3, v3, v0

    #@f
    xor-int v1, v2, v3

    #@11
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 141
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 142
    const/4 v0, 0x0

    #@19
    :goto_1
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@1b
    if-ge v0, v2, :cond_1

    #@1d
    .line 143
    shl-int/lit8 v2, v1, 0x4

    #@1f
    ushr-int/lit8 v3, v1, 0x1c

    #@21
    or-int/2addr v2, v3

    #@22
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@24
    aget-object v3, v3, v0

    #@26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@29
    move-result v3

    #@2a
    xor-int v1, v2, v3

    #@2c
    .line 142
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 146
    :cond_1
    return v1
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 323
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@3
    if-lez v0, :cond_0

    #@5
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    #@7
    if-gtz v0, :cond_1

    #@9
    .line 324
    :cond_0
    return v1

    #@a
    .line 326
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@c
    if-nez v0, :cond_2

    #@e
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@10
    if-nez v0, :cond_2

    #@12
    .line 327
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 329
    :cond_2
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Other "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, " has names, but target "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 331
    const-string/jumbo v2, " does not"

    #@3b
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    .line 333
    :cond_3
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@49
    if-nez v0, :cond_4

    #@4b
    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "Target "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, " has names, but other "

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    .line 335
    const-string/jumbo v2, " does not"

    #@6b
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v0

    #@77
    .line 337
    :cond_4
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    #@7a
    move-result v0

    #@7b
    return v0
.end method

.method public set(I)V
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 208
    const/4 v0, 0x1

    #@2
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@4
    .line 209
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x2

    #@9
    new-array v0, v0, [I

    #@b
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@d
    .line 210
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@f
    const/4 v1, 0x0

    #@10
    aput p1, v0, v1

    #@12
    .line 211
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@14
    .line 207
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 216
    if-nez p2, :cond_0

    #@4
    .line 217
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v1, "Name can\'t be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 219
    :cond_0
    const/4 v0, 0x1

    #@e
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@10
    .line 220
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@12
    if-nez v0, :cond_1

    #@14
    .line 221
    new-array v0, v2, [I

    #@16
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@18
    .line 222
    new-array v0, v2, [Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@1c
    .line 224
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@1e
    aput p1, v0, v1

    #@20
    .line 225
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@22
    aput-object p2, v0, v1

    #@24
    .line 215
    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 180
    if-nez p1, :cond_0

    #@4
    .line 181
    iput v4, p0, Landroid/os/WorkSource;->mNum:I

    #@6
    .line 182
    return-void

    #@7
    .line 184
    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    #@9
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    #@b
    .line 185
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    #@d
    if-eqz v0, :cond_4

    #@f
    .line 186
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@11
    if-eqz v0, :cond_1

    #@13
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@15
    array-length v0, v0

    #@16
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@18
    if-lt v0, v1, :cond_1

    #@1a
    .line 187
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    #@1c
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    #@1e
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@20
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@23
    .line 191
    :goto_0
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 192
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@29
    if-eqz v0, :cond_2

    #@2b
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@2d
    array-length v0, v0

    #@2e
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    #@30
    if-lt v0, v1, :cond_2

    #@32
    .line 193
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@34
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@36
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@38
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 179
    :goto_1
    return-void

    #@3c
    .line 189
    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    #@3e
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, [I

    #@44
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@46
    goto :goto_0

    #@47
    .line 195
    :cond_2
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@49
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, [Ljava/lang/String;

    #@4f
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@51
    goto :goto_1

    #@52
    .line 198
    :cond_3
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@54
    goto :goto_1

    #@55
    .line 201
    :cond_4
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@57
    .line 202
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@59
    goto :goto_1
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    #@3
    monitor-enter v2

    #@4
    .line 231
    const/4 v1, 0x0

    #@5
    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@7
    .line 232
    const/4 v1, 0x0

    #@8
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@a
    .line 233
    const/4 v1, 0x1

    #@b
    const/4 v3, 0x1

    #@c
    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    #@f
    .line 234
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@11
    if-nez v1, :cond_0

    #@13
    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 235
    :cond_0
    const/4 v1, 0x2

    #@18
    new-array v0, v1, [Landroid/os/WorkSource;

    #@1a
    .line 236
    .local v0, "diffs":[Landroid/os/WorkSource;
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    #@1c
    const/4 v3, 0x0

    #@1d
    aput-object v1, v0, v3

    #@1f
    .line 237
    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    #@21
    const/4 v3, 0x1

    #@22
    aput-object v1, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v2

    #@25
    .line 238
    return-object v0

    #@26
    .end local v0    # "diffs":[Landroid/os/WorkSource;
    :cond_1
    monitor-exit v2

    #@27
    .line 240
    return-object v4

    #@28
    .line 230
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@2
    return v0
.end method

.method public stripNames()Landroid/os/WorkSource;
    .locals 4

    #@0
    .prologue
    .line 343
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    #@2
    if-gtz v3, :cond_0

    #@4
    .line 344
    new-instance v3, Landroid/os/WorkSource;

    #@6
    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    #@9
    return-object v3

    #@a
    .line 346
    :cond_0
    new-instance v1, Landroid/os/WorkSource;

    #@c
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    #@f
    .line 348
    .local v1, "result":Landroid/os/WorkSource;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    #@12
    if-ge v0, v3, :cond_3

    #@14
    .line 349
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    #@16
    aget v2, v3, v0

    #@18
    .line 350
    .local v2, "uid":I
    if-eqz v0, :cond_1

    #@1a
    .line 347
    const/4 v3, -0x1

    #@1b
    .line 350
    if-eq v3, v2, :cond_2

    #@1d
    .line 351
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    #@20
    .line 348
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 354
    .end local v2    # "uid":I
    :cond_3
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 680
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "WorkSource{"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 681
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    #@e
    if-ge v0, v2, :cond_2

    #@10
    .line 682
    if-eqz v0, :cond_0

    #@12
    .line 683
    const-string/jumbo v2, ", "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 685
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    #@1a
    aget v2, v2, v0

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    .line 686
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 687
    const-string/jumbo v2, " "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 688
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@2b
    aget-object v2, v2, v0

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 681
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 691
    :cond_2
    const-string/jumbo v2, "}"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 672
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 673
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@a
    .line 674
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    .line 671
    return-void
.end method

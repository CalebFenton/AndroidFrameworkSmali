.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "WorkSource"

.field static greylist-max-p sGoneWork:Landroid/os/WorkSource;

.field static greylist-max-p sNewbWork:Landroid/os/WorkSource;

.field static final greylist-max-p sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private greylist-max-o mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field greylist mNames:[Ljava/lang/String;

.field greylist mNum:I

.field greylist mUids:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 1238
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 66
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 4
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 103
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 104
    filled-new-array {p1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 106
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 117
    const-string/jumbo v1, "packageName can\'t be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 119
    filled-new-array {p1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 120
    const/4 v0, 0x0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 121
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    new-array v0, v0, [I

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, "numChains":I
    if-ltz v0, :cond_3d

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 133
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_40

    .line 135
    :cond_3d
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 137
    :goto_40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "orig"    # Landroid/os/WorkSource;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 75
    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 76
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 77
    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 78
    return-void

    .line 80
    :cond_10
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 81
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 82
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :goto_2c
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 84
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 87
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 88
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_45

    :cond_5c
    goto :goto_5f

    .line 91
    :cond_5d
    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 93
    :goto_5f
    return-void
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .registers 3
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    .line 704
    if-nez p0, :cond_8

    .line 705
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    .line 707
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 708
    return-object p0
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 4
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 796
    if-nez p0, :cond_8

    .line 797
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 799
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 800
    return-object p0
.end method

.method private greylist-max-o clearNames()V
    .registers 7

    .line 228
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 233
    .local v1, "newNum":I
    const/4 v2, 0x1

    .local v2, "sourceIndex":I
    :goto_b
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_2b

    .line 234
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_1e

    .line 235
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 237
    :cond_1e
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v2

    aput v4, v3, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 233
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 241
    .end local v2    # "sourceIndex":I
    :cond_2b
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 243
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    :cond_2d
    return-void
.end method

.method private greylist-max-o compare(Landroid/os/WorkSource;II)I
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .line 788
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 789
    .local v0, "diff":I
    if-eqz v0, :cond_c

    .line 790
    return v0

    .line 792
    :cond_c
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .registers 8
    .param p0, "oldWs"    # Landroid/os/WorkSource;
    .param p1, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 1118
    const/4 v0, 0x0

    .line 1119
    .local v0, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    .line 1125
    .local v1, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    .line 1126
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 1127
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1128
    .local v3, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_23

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1129
    :cond_23
    if-nez v1, :cond_31

    .line 1130
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 1132
    :cond_31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1137
    .end local v2    # "i":I
    :cond_37
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_6c

    .line 1138
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3c
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6c

    .line 1139
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1140
    .restart local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_58

    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 1141
    :cond_58
    if-nez v0, :cond_66

    .line 1142
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1144
    :cond_66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1149
    .end local v2    # "i":I
    :cond_6c
    if-nez v0, :cond_73

    if-eqz v1, :cond_71

    goto :goto_73

    .line 1153
    :cond_71
    const/4 v2, 0x0

    return-object v2

    .line 1150
    :cond_73
    :goto_73
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method private greylist-max-o insert(II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "uid"    # I

    .line 867
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    .line 868
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 869
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, v1

    .line 870
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_5c

    .line 871
    :cond_13
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_43

    .line 872
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 873
    .local v0, "newuids":[I
    if-lez p1, :cond_29

    .line 874
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    :cond_29
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_37

    .line 877
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    :cond_37
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 880
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 881
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 882
    .end local v0    # "newuids":[I
    goto :goto_5c

    .line 883
    :cond_43
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_53

    .line 884
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    :cond_53
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 887
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 889
    :goto_5c
    return-void
.end method

.method private greylist-max-o insert(IILjava/lang/String;)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 892
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    .line 893
    const/4 v0, 0x4

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 894
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v3, v1

    .line 895
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 896
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, v1

    .line 897
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_90

    .line 898
    :cond_1a
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_67

    .line 899
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 900
    .local v0, "newuids":[I
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 901
    .local v3, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_3d

    .line 902
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v4, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 903
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 905
    :cond_3d
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_55

    .line 906
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    :cond_55
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 910
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 911
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 912
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v1, p1

    .line 913
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 914
    .end local v0    # "newuids":[I
    .end local v3    # "newnames":[Ljava/lang/String;
    goto :goto_90

    .line 915
    :cond_67
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_83

    .line 916
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    :cond_83
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 920
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 921
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 923
    :goto_90
    return-void
.end method

.method public static greylist-max-o isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "chained_battery_attribution_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static blacklist isChainedBatteryAttributionEnabled$ravenwood(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o removeUids(Landroid/os/WorkSource;)Z
    .registers 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 617
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 618
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 619
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 620
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 621
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 622
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 624
    .local v6, "i2":I
    :goto_b
    if-ge v5, v0, :cond_30

    if-ge v6, v2, :cond_30

    .line 627
    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_24

    .line 630
    add-int/lit8 v0, v0, -0x1

    .line 631
    const/4 v4, 0x1

    .line 632
    if-ge v5, v0, :cond_21

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 634
    :cond_24
    aget v7, v3, v6

    aget v8, v1, v5

    if-le v7, v8, :cond_2d

    .line 636
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 639
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 643
    :cond_30
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 645
    return v4
.end method

.method private greylist-max-o removeUidsAndNames(Landroid/os/WorkSource;)Z
    .registers 13
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 649
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 650
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 651
    .local v1, "uids1":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 652
    .local v2, "names1":[Ljava/lang/String;
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 653
    .local v3, "N2":I
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 654
    .local v4, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 655
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 656
    .local v6, "changed":Z
    const/4 v7, 0x0

    .local v7, "i1":I
    const/4 v8, 0x0

    .line 658
    .local v8, "i2":I
    :goto_f
    if-ge v7, v0, :cond_56

    if-ge v8, v3, :cond_56

    .line 661
    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_39

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 664
    add-int/lit8 v0, v0, -0x1

    .line 665
    const/4 v6, 0x1

    .line 666
    if-ge v7, v0, :cond_36

    .line 667
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v1, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v2, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 671
    :cond_39
    aget v9, v4, v8

    aget v10, v1, v7

    if-gt v9, v10, :cond_53

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_50

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    .line 672
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_50

    goto :goto_53

    .line 677
    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 674
    :cond_53
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 681
    :cond_56
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 683
    return v6
.end method

.method private greylist-max-p updateLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 8
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 688
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 689
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    .line 691
    :cond_d
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const-string v1, " does not"

    if-lez v0, :cond_3f

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_18

    goto :goto_3f

    .line 692
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has names, but target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_3f
    :goto_3f
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_6f

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_48

    goto :goto_6f

    .line 696
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has names, but other "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 15
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 804
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 805
    .local v0, "N2":I
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 806
    .local v1, "uids2":[I
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 807
    .local v2, "names2":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 808
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i1":I
    const/4 v5, 0x0

    .line 811
    .local v5, "i2":I
    :goto_9
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v6, :cond_11

    if-ge v5, v0, :cond_10

    goto :goto_11

    .line 862
    :cond_10
    return v3

    .line 814
    :cond_11
    :goto_11
    const/4 v6, -0x1

    .line 815
    .local v6, "diff":I
    iget v7, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v7, :cond_78

    if-ge v5, v0, :cond_20

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_20

    goto :goto_78

    .line 827
    :cond_20
    if-nez p2, :cond_2b

    .line 829
    if-ge v5, v0, :cond_28

    if-nez v6, :cond_28

    .line 830
    add-int/lit8 v5, v5, 0x1

    .line 832
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 835
    :cond_2b
    move v7, v4

    .line 836
    .local v7, "start":I
    :goto_2c
    if-gez v6, :cond_4f

    .line 839
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 840
    add-int/lit8 v4, v4, 0x1

    .line 841
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v8, :cond_45

    .line 842
    goto :goto_4f

    .line 844
    :cond_45
    if-ge v5, v0, :cond_4c

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v8

    goto :goto_4d

    :cond_4c
    const/4 v8, -0x1

    :goto_4d
    move v6, v8

    goto :goto_2c

    .line 846
    :cond_4f
    :goto_4f
    if-ge v7, v4, :cond_6d

    .line 847
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v4

    invoke-static {v8, v4, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v4

    invoke-static {v8, v4, v9, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v4, v7

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    .line 850
    move v4, v7

    .line 853
    :cond_6d
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v8, :cond_92

    if-nez v6, :cond_92

    .line 855
    add-int/lit8 v4, v4, 0x1

    .line 856
    add-int/lit8 v5, v5, 0x1

    goto :goto_92

    .line 817
    .end local v7    # "start":I
    :cond_78
    :goto_78
    const/4 v3, 0x1

    .line 820
    aget v7, v1, v5

    aget-object v8, v2, v5

    invoke-direct {p0, v4, v7, v8}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 821
    if-eqz p3, :cond_8e

    .line 822
    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v7, v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 824
    :cond_8e
    add-int/lit8 v4, v4, 0x1

    .line 825
    add-int/lit8 v5, v5, 0x1

    .line 860
    .end local v6    # "diff":I
    :cond_92
    :goto_92
    goto/16 :goto_9
.end method

.method private greylist-max-o updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 14
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 712
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 713
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 714
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 715
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 716
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 717
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 720
    .local v6, "i2":I
    :goto_b
    if-lt v5, v0, :cond_15

    if-ge v6, v2, :cond_10

    goto :goto_15

    .line 778
    :cond_10
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 779
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 781
    return v4

    .line 723
    :cond_15
    :goto_15
    if-ge v5, v0, :cond_61

    if-ge v6, v2, :cond_20

    aget v7, v3, v6

    aget v8, v1, v5

    if-ge v7, v8, :cond_20

    goto :goto_61

    .line 748
    :cond_20
    if-nez p2, :cond_2f

    .line 751
    if-ge v6, v2, :cond_2c

    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_2c

    .line 752
    add-int/lit8 v6, v6, 0x1

    .line 754
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 757
    :cond_2f
    move v7, v5

    .line 758
    .local v7, "start":I
    :goto_30
    if-ge v5, v0, :cond_47

    if-ge v6, v2, :cond_3a

    aget v8, v3, v6

    aget v9, v1, v5

    if-le v8, v9, :cond_47

    .line 760
    :cond_3a
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v9, v1, v5

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 761
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 763
    :cond_47
    if-ge v7, v5, :cond_52

    .line 764
    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    sub-int v8, v5, v7

    sub-int/2addr v0, v8

    .line 766
    move v5, v7

    .line 769
    :cond_52
    if-ge v5, v0, :cond_60

    if-ge v6, v2, :cond_60

    aget v8, v3, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_60

    .line 771
    add-int/lit8 v5, v5, 0x1

    .line 772
    add-int/lit8 v6, v6, 0x1

    .line 774
    .end local v7    # "start":I
    :cond_60
    goto :goto_b

    .line 727
    :cond_61
    :goto_61
    const/4 v4, 0x1

    .line 728
    array-length v7, v1

    const/4 v8, 0x0

    if-nez v7, :cond_6e

    .line 729
    const/4 v7, 0x4

    new-array v1, v7, [I

    .line 730
    aget v7, v3, v6

    aput v7, v1, v8

    goto :goto_99

    .line 731
    :cond_6e
    array-length v7, v1

    if-lt v0, v7, :cond_8c

    .line 732
    array-length v7, v1

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [I

    .line 733
    .local v7, "newuids":[I
    if-lez v5, :cond_7d

    invoke-static {v1, v8, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    :cond_7d
    if-ge v5, v0, :cond_86

    add-int/lit8 v8, v5, 0x1

    sub-int v9, v0, v5

    invoke-static {v1, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    :cond_86
    move-object v1, v7

    .line 736
    aget v8, v3, v6

    aput v8, v1, v5

    .line 737
    .end local v7    # "newuids":[I
    goto :goto_99

    .line 738
    :cond_8c
    if-ge v5, v0, :cond_95

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    :cond_95
    aget v7, v3, v6

    aput v7, v1, v5

    .line 741
    :goto_99
    if-eqz p3, :cond_a5

    .line 742
    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v3, v6

    invoke-static {v7, v8}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 744
    :cond_a5
    add-int/lit8 v0, v0, 0x1

    .line 745
    add-int/lit8 v5, v5, 0x1

    .line 746
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b
.end method


# virtual methods
.method public greylist add(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 480
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_d

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 482
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 483
    return v1

    .line 485
    :cond_d
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_22

    .line 488
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 490
    .local v0, "i":I
    if-ltz v0, :cond_1c

    .line 491
    return v2

    .line 493
    :cond_1c
    neg-int v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 494
    return v1

    .line 486
    .end local v0    # "i":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding without name to named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist add(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 501
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_a

    .line 502
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 503
    return v2

    .line 505
    :cond_a
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_31

    .line 510
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1a

    .line 511
    goto :goto_31

    .line 513
    :cond_1a
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_2e

    .line 514
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 515
    .local v3, "diff":I
    if-lez v3, :cond_2b

    .line 516
    goto :goto_31

    .line 518
    :cond_2b
    if-nez v3, :cond_2e

    .line 519
    return v1

    .line 509
    .end local v3    # "diff":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 523
    :cond_31
    :goto_31
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 524
    return v2

    .line 506
    .end local v0    # "i":I
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding name to unnamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist add(Landroid/os/WorkSource;)Z
    .registers 10
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 422
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 423
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    .line 425
    .local v2, "uidAdded":Z
    const/4 v3, 0x0

    .line 426
    .local v3, "chainAdded":Z
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_44

    .line 429
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v4, :cond_1e

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 433
    :cond_1e
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 434
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 435
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v7, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v3, 0x1

    .line 438
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_43
    goto :goto_24

    .line 441
    :cond_44
    if-nez v2, :cond_48

    if-eqz v3, :cond_49

    :cond_48
    const/4 v1, 0x1

    :cond_49
    monitor-exit v0

    return v1

    .line 442
    .end local v2    # "uidAdded":Z
    .end local v3    # "chainAdded":Z
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public blacklist addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 470
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 471
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 472
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 473
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist clear()V
    .registers 2

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 250
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    :cond_c
    return-void
.end method

.method public whitelist createWorkChain()Landroid/os/WorkSource$WorkChain;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 566
    :cond_c
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 567
    .local v0, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/os/WorkSource;)Z
    .registers 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 301
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 302
    .local v0, "N":I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    .line 303
    return v2

    .line 305
    :cond_8
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 306
    .local v1, "uids1":[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 307
    .local v3, "uids2":[I
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 308
    .local v4, "names1":[Ljava/lang/String;
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 309
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v0, :cond_2c

    .line 310
    aget v7, v1, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_1a

    .line 311
    return v2

    .line 313
    :cond_1a
    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 314
    return v2

    .line 309
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 317
    .end local v6    # "i":I
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1207
    .local v2, "workSourceToken":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget v5, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    if-ge v4, v5, :cond_38

    .line 1208
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1209
    .local v10, "contentProto":J
    iget-object v5, v0, Landroid/os/WorkSource;->mUids:[I

    aget v5, v5, v4

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1210
    iget-object v5, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 1211
    iget-object v5, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1213
    :cond_32
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1207
    .end local v10    # "contentProto":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1216
    .end local v4    # "i":I
    :cond_38
    iget-object v4, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_a3

    .line 1217
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3d
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a3

    .line 1218
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1219
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1221
    .local v12, "workChain":J
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v14

    .line 1222
    .local v14, "tags":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v15

    .line 1223
    .local v15, "uids":[I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "j":I
    :goto_62
    array-length v7, v14

    if-ge v6, v7, :cond_8d

    .line 1224
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1225
    .local v8, "contentProto":J
    aget v7, v15, v6

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1226
    aget-object v7, v14, v6

    const-wide v10, 0x10900000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1227
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1223
    .end local v8    # "contentProto":J
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_62

    :cond_8d
    const-wide v10, 0x10900000002L

    .line 1230
    .end local v6    # "j":I
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1217
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v12    # "workChain":J
    .end local v14    # "tags":[Ljava/lang/String;
    .end local v15    # "uids":[I
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v10

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_3d

    .line 1234
    .end local v4    # "i":I
    :cond_a3
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1235
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 257
    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 258
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    .line 260
    .local v0, "other":Landroid/os/WorkSource;
    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 261
    return v1

    .line 264
    :cond_f
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 265
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 267
    :cond_24
    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    const/4 v1, 0x1

    :cond_31
    return v1

    .line 271
    .end local v0    # "other":Landroid/os/WorkSource;
    :cond_32
    return v1
.end method

.method public greylist get(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributionUid()I
    .registers 3

    .line 193
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    const/4 v0, -0x1

    return v0

    .line 197
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, v1

    goto :goto_1e

    :cond_12
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    :goto_1e
    return v0
.end method

.method public greylist getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 218
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public whitelist getUid(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getWorkChains()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_14

    .line 278
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 280
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 281
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_19
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_2f

    .line 282
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int v0, v2, v3

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 286
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    .line 287
    shl-int/lit8 v1, v0, 0x4

    ushr-int/lit8 v2, v0, 0x1c

    or-int/2addr v1, v2

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    xor-int v0, v1, v2

    .line 290
    :cond_40
    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 580
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist remove(Landroid/os/WorkSource;)Z
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 528
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8f

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_8f

    .line 533
    :cond_f
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 534
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    .local v0, "uidRemoved":Z
    goto :goto_2a

    .line 536
    .end local v0    # "uidRemoved":Z
    :cond_1c
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const-string v2, " does not"

    if-eqz v0, :cond_68

    .line 540
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 544
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    .line 547
    .restart local v0    # "uidRemoved":Z
    :goto_2a
    const/4 v2, 0x0

    .line 548
    .local v2, "chainRemoved":Z
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_3b

    .line 549
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 552
    :cond_3b
    if-nez v0, :cond_3f

    if-eqz v2, :cond_40

    :cond_3f
    const/4 v1, 0x1

    :cond_40
    return v1

    .line 541
    .end local v0    # "uidRemoved":Z
    .end local v2    # "chainRemoved":Z
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_8f
    :goto_8f
    return v1
.end method

.method public greylist-max-o set(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 362
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 363
    :cond_d
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 365
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 366
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 368
    :cond_1e
    return-void
.end method

.method public greylist-max-o set(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 372
    if-eqz p2, :cond_26

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 376
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    if-nez v0, :cond_13

    .line 377
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 378
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 380
    :cond_13
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 381
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 382
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    .line 383
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    :cond_25
    return-void

    .line 373
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist set(Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 326
    if-nez p1, :cond_6

    .line 327
    invoke-virtual {p0}, Landroid/os/WorkSource;->clear()V

    .line 328
    return-void

    .line 330
    :cond_6
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 331
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    .line 332
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_26

    .line 334
    :cond_1c
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 336
    :goto_26
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 337
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_3f

    .line 338
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    .line 340
    :cond_3f
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_4d

    .line 343
    :cond_4a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 346
    :goto_4d
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_85

    .line 347
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    .line 348
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_68

    .line 350
    :cond_5b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 353
    :goto_68
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 354
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_6e

    .line 357
    :cond_85
    return-void
.end method

.method public blacklist setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 402
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 403
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 404
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 405
    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v3, :cond_17

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v3, :cond_15

    goto :goto_17

    .line 411
    :cond_15
    monitor-exit v0

    return-object v1

    .line 406
    :cond_17
    :goto_17
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    .line 407
    .local v1, "diffs":[Landroid/os/WorkSource;
    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 408
    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v1, v2

    .line 409
    monitor-exit v0

    return-object v1

    .line 412
    .end local v1    # "diffs":[Landroid/os/WorkSource;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public whitelist size()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 162
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1178
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    const-string v3, ", "

    if-ge v1, v2, :cond_30

    .line 1180
    if-eqz v1, :cond_16

    .line 1181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_16
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 1185
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1190
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    .line 1191
    const-string v1, " chains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 1193
    if-eqz v1, :cond_47

    .line 1194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_47
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1200
    .end local v1    # "i":I
    :cond_53
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o transferWorkChains(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 600
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 604
    :cond_9
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 608
    :cond_16
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 612
    :cond_22
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 613
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    return-void

    .line 605
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist withoutNames()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 455
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 456
    .local v0, "copy":Landroid/os/WorkSource;
    invoke-direct {v0}, Landroid/os/WorkSource;->clearNames()V

    .line 457
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1163
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1165
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1168
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 1170
    :cond_18
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 1173
    :goto_26
    return-void
.end method

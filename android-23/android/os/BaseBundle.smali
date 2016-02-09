.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final EMPTY_PARCEL:Landroid/os/Parcel;

.field private static final TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@6
    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/ClassLoader;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    #@7
    .line 75
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/ClassLoader;

    #@3
    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    #@6
    .line 110
    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/BaseBundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@7
    .line 51
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@9
    .line 121
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 122
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@f
    sget-object v1, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@11
    if-ne v0, v1, :cond_0

    #@13
    .line 123
    sget-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@15
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@17
    .line 133
    :goto_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    #@1d
    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@1f
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    #@22
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@24
    .line 139
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@26
    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@28
    .line 120
    return-void

    #@29
    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@2f
    .line 126
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@31
    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@33
    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@35
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    #@38
    move-result v2

    #@39
    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@3c
    .line 127
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@3e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@41
    goto :goto_0

    #@42
    .line 130
    :cond_1
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@44
    goto :goto_0

    #@45
    .line 136
    :cond_2
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@47
    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@8
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    #@b
    .line 85
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@8
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    #@b
    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    #@4
    .line 100
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@8
    .line 67
    if-lez p2, :cond_1

    #@a
    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    #@c
    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    #@f
    .line 67
    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@11
    .line 69
    if-nez p1, :cond_0

    #@13
    invoke-virtual {p0}, Landroid/os/BaseBundle;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1a
    move-result-object p1

    #@1b
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@1d
    .line 66
    return-void

    #@1e
    .line 68
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    #@20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@23
    goto :goto_0
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1355
    if-nez p2, :cond_0

    #@3
    .line 1357
    sget-object v3, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@5
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@7
    .line 1358
    return-void

    #@8
    .line 1360
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    .line 1361
    .local v0, "magic":I
    const v3, 0x4c444e42    # 5.146036E7f

    #@f
    if-eq v0, v3, :cond_1

    #@11
    .line 1363
    new-instance v3, Ljava/lang/IllegalStateException;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Bad magic number for Bundle: 0x"

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    .line 1364
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    .line 1363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 1368
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@32
    move-result v1

    #@33
    .line 1369
    .local v1, "offset":I
    add-int v3, v1, p2

    #@35
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    #@38
    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3b
    move-result-object v2

    #@3c
    .line 1372
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@3f
    .line 1373
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@42
    .line 1376
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    #@45
    .line 1378
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@47
    .line 1354
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 258
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@8
    .line 256
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 270
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 282
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 625
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 660
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 661
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@b
    .line 662
    return p2

    #@c
    .line 665
    :cond_0
    :try_start_0
    move-object v0, v3

    #@d
    check-cast v0, Ljava/lang/Boolean;

    #@f
    move-object v1, v0

    #@10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 666
    :catch_0
    move-exception v6

    #@16
    .line 667
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Boolean"

    #@19
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v5

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 668
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1084
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1085
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1086
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1087
    return-object v3

    #@d
    .line 1090
    :cond_0
    :try_start_0
    check-cast v1, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1091
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1092
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1093
    return-object v3
.end method

.method getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 681
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@b
    move-result v0

    #@c
    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    #@0
    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 694
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .line 695
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    #@b
    .line 696
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 699
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .end local v2    # "o":Ljava/lang/Object;
    return-object v2

    #@13
    .line 700
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v5

    #@14
    .line 701
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "Byte"

    #@17
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@1a
    move-result-object v4

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, p1

    #@1d
    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@20
    .line 702
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1107
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1108
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1109
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1110
    return-object v3

    #@d
    .line 1113
    :cond_0
    :try_start_0
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1114
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1115
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1116
    return-object v3
.end method

.method getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 715
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    #@0
    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 728
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 729
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@b
    .line 730
    return p2

    #@c
    .line 733
    :cond_0
    :try_start_0
    move-object v0, v3

    #@d
    check-cast v0, Ljava/lang/Character;

    #@f
    move-object v1, v0

    #@10
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 734
    :catch_0
    move-exception v6

    #@16
    .line 735
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Character"

    #@19
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1c
    move-result-object v5

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 736
    return p2
.end method

.method getCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1153
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1154
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1155
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1156
    return-object v3

    #@d
    .line 1159
    :cond_0
    :try_start_0
    check-cast v1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1160
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1161
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "char[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1162
    return-object v3
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 956
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 957
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 959
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@c
    .line 960
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@d
    .line 961
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence"

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@13
    .line 962
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 978
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    .line 979
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@6
    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    #@7
    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, v0

    #@8
    goto :goto_0
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1291
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1292
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1293
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1294
    return-object v3

    #@d
    .line 1297
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1298
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1299
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1300
    return-object v3
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1061
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1062
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1063
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1064
    return-object v3

    #@d
    .line 1067
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1068
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1069
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<CharSequence>"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1070
    return-object v3
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 885
    const-wide/16 v0, 0x0

    #@5
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 898
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    .line 899
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    #@b
    .line 900
    return-wide p2

    #@c
    .line 903
    :cond_0
    :try_start_0
    move-object v0, v4

    #@d
    check-cast v0, Ljava/lang/Double;

    #@f
    move-object v2, v0

    #@10
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-wide v2

    #@14
    return-wide v2

    #@15
    .line 904
    :catch_0
    move-exception v7

    #@16
    .line 905
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Double"

    #@19
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1c
    move-result-object v6

    #@1d
    move-object v2, p0

    #@1e
    move-object v3, p1

    #@1f
    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 906
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1245
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1246
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1247
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1248
    return-object v3

    #@d
    .line 1251
    :cond_0
    :try_start_0
    check-cast v1, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1252
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1253
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "double[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1254
    return-object v3
.end method

.method getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 851
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    .line 863
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 864
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 865
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@b
    .line 866
    return p2

    #@c
    .line 869
    :cond_0
    :try_start_0
    move-object v0, v3

    #@d
    check-cast v0, Ljava/lang/Float;

    #@f
    move-object v1, v0

    #@10
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 870
    :catch_0
    move-exception v6

    #@16
    .line 871
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Float"

    #@19
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1c
    move-result-object v5

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 872
    return p2
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1222
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1223
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1224
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1225
    return-object v3

    #@d
    .line 1228
    :cond_0
    :try_start_0
    check-cast v1, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1229
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1230
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "float[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1231
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 783
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 796
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 797
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@b
    .line 798
    return p2

    #@c
    .line 801
    :cond_0
    :try_start_0
    move-object v0, v3

    #@d
    check-cast v0, Ljava/lang/Integer;

    #@f
    move-object v1, v0

    #@10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 802
    :catch_0
    move-exception v6

    #@16
    .line 803
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Integer"

    #@19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v5

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 804
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1176
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1177
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1178
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1179
    return-object v3

    #@d
    .line 1182
    :cond_0
    :try_start_0
    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1183
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1184
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "int[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1185
    return-object v3
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1015
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1016
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1017
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1018
    return-object v3

    #@d
    .line 1021
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1022
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1023
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<Integer>"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1024
    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 817
    const-wide/16 v0, 0x0

    #@5
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 829
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 830
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v4

    #@9
    .line 831
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    #@b
    .line 832
    return-wide p2

    #@c
    .line 835
    :cond_0
    :try_start_0
    move-object v0, v4

    #@d
    check-cast v0, Ljava/lang/Long;

    #@f
    move-object v2, v0

    #@10
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-wide v2

    #@14
    return-wide v2

    #@15
    .line 836
    :catch_0
    move-exception v7

    #@16
    .line 837
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Long"

    #@19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1c
    move-result-object v6

    #@1d
    move-object v2, p0

    #@1e
    move-object v3, p1

    #@1f
    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 838
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1199
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1200
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1201
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1202
    return-object v3

    #@d
    .line 1205
    :cond_0
    :try_start_0
    check-cast v1, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1206
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1207
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "long[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1208
    return-object v3
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 152
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@5
    .line 153
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@7
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v2

    #@b
    .line 154
    .local v2, "size":I
    const/4 v3, 0x1

    #@c
    if-le v2, v3, :cond_0

    #@e
    .line 155
    const-string/jumbo v3, "Bundle"

    #@11
    const-string/jumbo v4, "getPairValue() used on Bundle with multiple pairs."

    #@14
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 157
    :cond_0
    if-nez v2, :cond_1

    #@19
    .line 158
    return-object v6

    #@1a
    .line 160
    :cond_1
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@1c
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .line 162
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@23
    .line 163
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@24
    .line 164
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "getPairValue()"

    #@27
    const-string/jumbo v4, "String"

    #@2a
    invoke-virtual {p0, v3, v1, v4, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@2d
    .line 165
    return-object v6
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 992
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 993
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 994
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 995
    return-object v3

    #@d
    .line 998
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 999
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1000
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Serializable"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1001
    return-object v3
.end method

.method getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 748
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 749
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    #@0
    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 762
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v3

    #@9
    .line 763
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    #@b
    .line 764
    return p2

    #@c
    .line 767
    :cond_0
    :try_start_0
    move-object v0, v3

    #@d
    check-cast v0, Ljava/lang/Short;

    #@f
    move-object v1, v0

    #@10
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 768
    :catch_0
    move-exception v6

    #@16
    .line 769
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Short"

    #@19
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@1c
    move-result-object v5

    #@1d
    move-object v1, p0

    #@1e
    move-object v2, p1

    #@1f
    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@22
    .line 770
    return p2
.end method

.method getShortArray(Ljava/lang/String;)[S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1130
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1131
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1132
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1133
    return-object v3

    #@d
    .line 1136
    :cond_0
    :try_start_0
    check-cast v1, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1137
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1138
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "short[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1139
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 921
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 923
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@c
    .line 924
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@d
    .line 925
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String"

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@13
    .line 926
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 942
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 943
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@7
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    #@8
    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1268
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1269
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1270
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1271
    return-object v3

    #@d
    .line 1274
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1275
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1276
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1277
    return-object v3
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1038
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@4
    .line 1039
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1040
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1041
    return-object v3

    #@d
    .line 1044
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1045
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1046
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<String>"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1047
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 250
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isParcelled()Z
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 323
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 302
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    #@6
    .line 303
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@8
    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    #@d
    .line 300
    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    #@0
    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 313
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    #@8
    .line 311
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 335
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 333
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    #@0
    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 503
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 501
    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    #@0
    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 347
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 345
    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 515
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 513
    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 359
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 357
    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    #@0
    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 539
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 537
    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 443
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 441
    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 611
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 609
    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 479
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 477
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 419
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 417
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    #@0
    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 587
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 585
    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 407
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 405
    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    #@0
    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 575
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 573
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 383
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 381
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    #@0
    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 551
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 549
    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 455
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 453
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 395
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 393
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    #@0
    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 563
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 561
    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    #@0
    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 491
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 489
    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    #@0
    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 371
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 369
    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    #@0
    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 527
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 525
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 431
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 429
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 599
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 597
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 466
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 467
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 465
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1348
    .local v0, "length":I
    if-gez v0, :cond_0

    #@6
    .line 1349
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Bad length in parcel: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 1351
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    #@23
    .line 1346
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 292
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 290
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@2
    .line 175
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    #@3
    .line 242
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    #@0
    .prologue
    .line 647
    const-string/jumbo v4, "<null>"

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v5, p4

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    #@b
    .line 646
    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    #@0
    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 632
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Key "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 634
    const-string/jumbo v1, " expected "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 635
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 636
    const-string/jumbo v1, " but value was a "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 637
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 638
    const-string/jumbo v1, ".  The default value "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 639
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    .line 640
    const-string/jumbo v1, " was returned."

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 641
    const-string/jumbo v1, "Bundle"

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 642
    const-string/jumbo v1, "Bundle"

    #@44
    const-string/jumbo v2, "Attempt to cast generated internal exception:"

    #@47
    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 630
    return-void
.end method

.method declared-synchronized unparcel()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 194
    return-void

    #@7
    .line 197
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@9
    sget-object v2, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@b
    if-ne v1, v2, :cond_2

    #@d
    .line 200
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@f
    if-nez v1, :cond_1

    #@11
    .line 201
    new-instance v1, Landroid/util/ArrayMap;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    #@17
    iput-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@19
    .line 205
    :goto_0
    const/4 v1, 0x0

    #@1a
    iput-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 206
    return-void

    #@1e
    .line 203
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    goto :goto_0

    #@24
    :catchall_0
    move-exception v1

    #@25
    monitor-exit p0

    #@26
    throw v1

    #@27
    .line 209
    :cond_2
    :try_start_3
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    move-result v0

    #@2d
    .line 212
    .local v0, "N":I
    if-gez v0, :cond_3

    #@2f
    monitor-exit p0

    #@30
    .line 213
    return-void

    #@31
    .line 215
    :cond_3
    :try_start_4
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@33
    if-nez v1, :cond_4

    #@35
    .line 216
    new-instance v1, Landroid/util/ArrayMap;

    #@37
    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    #@3a
    iput-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@3c
    .line 221
    :goto_1
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@3e
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@40
    iget-object v3, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    #@42
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    #@45
    .line 222
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@47
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 223
    const/4 v1, 0x0

    #@4b
    iput-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 190
    return-void

    #@4f
    .line 218
    :cond_4
    :try_start_5
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@51
    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V

    #@54
    .line 219
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@56
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@59
    goto :goto_1
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const v7, 0x4c444e42    # 5.146036E7f

    #@3
    const/4 v6, 0x0

    #@4
    .line 1310
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 1311
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@a
    sget-object v5, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@c
    if-ne v4, v5, :cond_0

    #@e
    .line 1312
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1309
    :goto_0
    return-void

    #@12
    .line 1314
    :cond_0
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@14
    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    #@17
    move-result v1

    #@18
    .line 1315
    .local v1, "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 1316
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1317
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    #@20
    invoke-virtual {p1, v4, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@23
    goto :goto_0

    #@24
    .line 1321
    .end local v1    # "length":I
    :cond_1
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@26
    if-eqz v4, :cond_2

    #@28
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@2a
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    #@2d
    move-result v4

    #@2e
    if-gtz v4, :cond_3

    #@30
    .line 1322
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1323
    return-void

    #@34
    .line 1325
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@37
    move-result v2

    #@38
    .line 1326
    .local v2, "lengthPos":I
    const/4 v4, -0x1

    #@39
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 1327
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@42
    move-result v3

    #@43
    .line 1330
    .local v3, "startPos":I
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    #@48
    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@4b
    move-result v0

    #@4c
    .line 1334
    .local v0, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@4f
    .line 1335
    sub-int v1, v0, v3

    #@51
    .line 1336
    .restart local v1    # "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    .line 1337
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@57
    goto :goto_0
.end method

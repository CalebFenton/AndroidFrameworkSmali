.class public final Lcom/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source "TableOfContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/TableOfContents$Section;
    }
.end annotation


# instance fields
.field public final annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

.field public apiLevel:I

.field public checksum:I

.field public final classDatas:Lcom/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/android/dex/TableOfContents$Section;

.field public final codes:Lcom/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 32
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@a
    invoke-direct {v0, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@d
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    #@f
    .line 33
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@11
    invoke-direct {v0, v3}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@14
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@16
    .line 34
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@18
    invoke-direct {v0, v4}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@1b
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@1d
    .line 35
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@1f
    invoke-direct {v0, v5}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@22
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@24
    .line 36
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@26
    invoke-direct {v0, v6}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@29
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@2b
    .line 37
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@2d
    const/4 v1, 0x5

    #@2e
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@31
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@33
    .line 38
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@35
    const/4 v1, 0x6

    #@36
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@39
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@3b
    .line 39
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@3d
    const/16 v1, 0x1000

    #@3f
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@42
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@44
    .line 40
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@46
    const/16 v1, 0x1001

    #@48
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@4b
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    #@4d
    .line 41
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@4f
    const/16 v1, 0x1002

    #@51
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@54
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    #@56
    .line 42
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@58
    const/16 v1, 0x1003

    #@5a
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@5d
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    #@5f
    .line 43
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@61
    const/16 v1, 0x2000

    #@63
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@66
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    #@68
    .line 44
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@6a
    const/16 v1, 0x2001

    #@6c
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@6f
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    #@71
    .line 45
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@73
    const/16 v1, 0x2002

    #@75
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@78
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    #@7a
    .line 46
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@7c
    const/16 v1, 0x2003

    #@7e
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@81
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    #@83
    .line 47
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@85
    const/16 v1, 0x2004

    #@87
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@8a
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    #@8c
    .line 48
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@8e
    const/16 v1, 0x2005

    #@90
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@93
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    #@95
    .line 49
    new-instance v0, Lcom/android/dex/TableOfContents$Section;

    #@97
    const/16 v1, 0x2006

    #@99
    invoke-direct {v0, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    #@9c
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    #@9e
    .line 50
    const/16 v0, 0x12

    #@a0
    new-array v0, v0, [Lcom/android/dex/TableOfContents$Section;

    #@a2
    .line 51
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    #@a4
    aput-object v1, v0, v2

    #@a6
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@a8
    aput-object v1, v0, v3

    #@aa
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@ac
    aput-object v1, v0, v4

    #@ae
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@b0
    aput-object v1, v0, v5

    #@b2
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@b4
    aput-object v1, v0, v6

    #@b6
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@b8
    const/4 v2, 0x5

    #@b9
    aput-object v1, v0, v2

    #@bb
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@bd
    const/4 v2, 0x6

    #@be
    aput-object v1, v0, v2

    #@c0
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@c2
    const/4 v2, 0x7

    #@c3
    aput-object v1, v0, v2

    #@c5
    .line 52
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    #@c7
    const/16 v2, 0x8

    #@c9
    aput-object v1, v0, v2

    #@cb
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    #@cd
    const/16 v2, 0x9

    #@cf
    aput-object v1, v0, v2

    #@d1
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    #@d3
    const/16 v2, 0xa

    #@d5
    aput-object v1, v0, v2

    #@d7
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    #@d9
    const/16 v2, 0xb

    #@db
    aput-object v1, v0, v2

    #@dd
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    #@df
    const/16 v2, 0xc

    #@e1
    aput-object v1, v0, v2

    #@e3
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    #@e5
    const/16 v2, 0xd

    #@e7
    aput-object v1, v0, v2

    #@e9
    .line 53
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    #@eb
    const/16 v2, 0xe

    #@ed
    aput-object v1, v0, v2

    #@ef
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    #@f1
    const/16 v2, 0xf

    #@f3
    aput-object v1, v0, v2

    #@f5
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    #@f7
    const/16 v2, 0x10

    #@f9
    aput-object v1, v0, v2

    #@fb
    iget-object v1, p0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    #@fd
    const/16 v2, 0x11

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 50
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@103
    .line 66
    const/16 v0, 0x14

    #@105
    new-array v0, v0, [B

    #@107
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@109
    .line 65
    return-void
.end method

.method private getSection(S)Lcom/android/dex/TableOfContents$Section;
    .locals 5
    .param p1, "type"    # S

    #@0
    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@2
    const/4 v1, 0x0

    #@3
    array-length v3, v2

    #@4
    :goto_0
    if-ge v1, v3, :cond_1

    #@6
    aget-object v0, v2, v1

    #@8
    .line 160
    .local v0, "section":Lcom/android/dex/TableOfContents$Section;
    iget-short v4, v0, Lcom/android/dex/TableOfContents$Section;->type:S

    #@a
    if-ne v4, p1, :cond_0

    #@c
    .line 161
    return-object v0

    #@d
    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 164
    .end local v0    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "No such map item: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
.end method

.method private readHeader(Lcom/android/dex/Dex$Section;)V
    .locals 6
    .param p1, "headerIn"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const/16 v3, 0x8

    #@2
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    #@5
    move-result-object v2

    #@6
    .line 78
    .local v2, "magic":[B
    invoke-static {v2}, Lcom/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    .line 79
    new-instance v3, Lcom/android/dex/DexException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "Unexpected magic: "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3

    #@2a
    .line 82
    :cond_0
    invoke-static {v2}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    #@2d
    move-result v3

    #@2e
    iput v3, p0, Lcom/android/dex/TableOfContents;->apiLevel:I

    #@30
    .line 83
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@33
    move-result v3

    #@34
    iput v3, p0, Lcom/android/dex/TableOfContents;->checksum:I

    #@36
    .line 84
    const/16 v3, 0x14

    #@38
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    #@3b
    move-result-object v3

    #@3c
    iput-object v3, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@3e
    .line 85
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@41
    move-result v3

    #@42
    iput v3, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    #@44
    .line 86
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@47
    move-result v1

    #@48
    .line 87
    .local v1, "headerSize":I
    const/16 v3, 0x70

    #@4a
    if-eq v1, v3, :cond_1

    #@4c
    .line 88
    new-instance v3, Lcom/android/dex/DexException;

    #@4e
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Unexpected header: 0x"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@69
    throw v3

    #@6a
    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@6d
    move-result v0

    #@6e
    .line 91
    .local v0, "endianTag":I
    const v3, 0x12345678

    #@71
    if-eq v0, v3, :cond_2

    #@73
    .line 92
    new-instance v3, Lcom/android/dex/DexException;

    #@75
    new-instance v4, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v5, "Unexpected endian tag: 0x"

    #@7d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@90
    throw v3

    #@91
    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@94
    move-result v3

    #@95
    iput v3, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    #@97
    .line 95
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@9a
    move-result v3

    #@9b
    iput v3, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    #@9d
    .line 96
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@9f
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@a2
    move-result v4

    #@a3
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@a5
    .line 97
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@a7
    iget v3, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@a9
    if-nez v3, :cond_3

    #@ab
    .line 98
    new-instance v3, Lcom/android/dex/DexException;

    #@ad
    const-string/jumbo v4, "Cannot merge dex files that do not contain a map"

    #@b0
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v3

    #@b4
    .line 100
    :cond_3
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@b6
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b9
    move-result v4

    #@ba
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@bc
    .line 101
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@be
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@c1
    move-result v4

    #@c2
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@c4
    .line 102
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@c6
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@c9
    move-result v4

    #@ca
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@cc
    .line 103
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@ce
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@d1
    move-result v4

    #@d2
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@d4
    .line 104
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@d6
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@d9
    move-result v4

    #@da
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@dc
    .line 105
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@de
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@e1
    move-result v4

    #@e2
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@e4
    .line 106
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@e6
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@e9
    move-result v4

    #@ea
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@ec
    .line 107
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@ee
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@f1
    move-result v4

    #@f2
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f4
    .line 108
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@f6
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@f9
    move-result v4

    #@fa
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@fc
    .line 109
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@fe
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@101
    move-result v4

    #@102
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@104
    .line 110
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@106
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@109
    move-result v4

    #@10a
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->size:I

    #@10c
    .line 111
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@10e
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@111
    move-result v4

    #@112
    iput v4, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@114
    .line 112
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@117
    move-result v3

    #@118
    iput v3, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@11a
    .line 113
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@11d
    move-result v3

    #@11e
    iput v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@120
    .line 75
    return-void
.end method

.method private readMap(Lcom/android/dex/Dex$Section;)V
    .locals 10
    .param p1, "in"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3
    move-result v1

    #@4
    .line 118
    .local v1, "mapSize":I
    const/4 v3, 0x0

    #@5
    .line 119
    .local v3, "previous":Lcom/android/dex/TableOfContents$Section;
    const/4 v0, 0x0

    #@6
    .end local v3    # "previous":Lcom/android/dex/TableOfContents$Section;
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@8
    .line 120
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    #@b
    move-result v6

    #@c
    .line 121
    .local v6, "type":S
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    #@f
    .line 122
    invoke-direct {p0, v6}, Lcom/android/dex/TableOfContents;->getSection(S)Lcom/android/dex/TableOfContents$Section;

    #@12
    move-result-object v4

    #@13
    .line 123
    .local v4, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@16
    move-result v5

    #@17
    .line 124
    .local v5, "size":I
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1a
    move-result v2

    #@1b
    .line 126
    .local v2, "offset":I
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@1d
    if-eqz v7, :cond_1

    #@1f
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@21
    if-eq v7, v5, :cond_1

    #@23
    .line 128
    :cond_0
    new-instance v7, Lcom/android/dex/DexException;

    #@25
    new-instance v8, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v9, "Unexpected map value for 0x"

    #@2d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@40
    throw v7

    #@41
    .line 127
    :cond_1
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@43
    const/4 v8, -0x1

    #@44
    if-eq v7, v8, :cond_2

    #@46
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@48
    if-ne v7, v2, :cond_0

    #@4a
    .line 131
    :cond_2
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@4c
    .line 132
    iput v2, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@4e
    .line 134
    if-eqz v3, :cond_3

    #@50
    iget v7, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@52
    iget v8, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@54
    if-le v7, v8, :cond_3

    #@56
    .line 135
    new-instance v7, Lcom/android/dex/DexException;

    #@58
    new-instance v8, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v9, "Map is unsorted at "

    #@60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v8

    #@68
    const-string/jumbo v9, ", "

    #@6b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v8

    #@73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    invoke-direct {v7, v8}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v7

    #@7b
    .line 138
    :cond_3
    move-object v3, v4

    #@7c
    .line 119
    .local v3, "previous":Lcom/android/dex/TableOfContents$Section;
    add-int/lit8 v0, v0, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 140
    .end local v2    # "offset":I
    .end local v3    # "previous":Lcom/android/dex/TableOfContents$Section;
    .end local v4    # "section":Lcom/android/dex/TableOfContents$Section;
    .end local v5    # "size":I
    .end local v6    # "type":S
    :cond_4
    iget-object v7, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@81
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@84
    .line 116
    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 6

    #@0
    .prologue
    .line 144
    iget v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@2
    iget v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@4
    add-int v0, v3, v4

    #@6
    .line 145
    .local v0, "end":I
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@8
    array-length v3, v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@d
    .line 146
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@f
    aget-object v2, v3, v1

    #@11
    .line 147
    .local v2, "section":Lcom/android/dex/TableOfContents$Section;
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@13
    const/4 v4, -0x1

    #@14
    if-ne v3, v4, :cond_0

    #@16
    .line 145
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@18
    goto :goto_0

    #@19
    .line 150
    :cond_0
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@1b
    if-le v3, v0, :cond_1

    #@1d
    .line 151
    new-instance v3, Lcom/android/dex/DexException;

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Map is unsorted at "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@36
    throw v3

    #@37
    .line 153
    :cond_1
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@39
    sub-int v3, v0, v3

    #@3b
    iput v3, v2, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    #@3d
    .line 154
    iget v0, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@3f
    goto :goto_1

    #@40
    .line 143
    .end local v2    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_2
    return-void
.end method

.method public readFrom(Lcom/android/dex/Dex;)V
    .locals 1
    .param p1, "dex"    # Lcom/android/dex/Dex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readHeader(Lcom/android/dex/Dex$Section;)V

    #@8
    .line 71
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@a
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@f
    move-result-object v0

    #@10
    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readMap(Lcom/android/dex/Dex$Section;)V

    #@13
    .line 72
    invoke-virtual {p0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    #@16
    .line 69
    return-void
.end method

.method public writeHeader(Lcom/android/dex/Dex$Section;I)V
    .locals 2
    .param p1, "out"    # Lcom/android/dex/Dex$Section;
    .param p2, "api"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    invoke-static {p2}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "UTF-8"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    #@e
    .line 169
    iget v0, p0, Lcom/android/dex/TableOfContents;->checksum:I

    #@10
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@13
    .line 170
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@15
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    #@18
    .line 171
    iget v0, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    #@1a
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@1d
    .line 172
    const/16 v0, 0x70

    #@1f
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@22
    .line 173
    const v0, 0x12345678

    #@25
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@28
    .line 174
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    #@2a
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@2d
    .line 175
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    #@2f
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@32
    .line 176
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@34
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@36
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@39
    .line 177
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@3b
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@3d
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@40
    .line 178
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@42
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@44
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@47
    .line 179
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@49
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@4b
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@4e
    .line 180
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@50
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@52
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@55
    .line 181
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@57
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@59
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@5c
    .line 182
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@5e
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@60
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@63
    .line 183
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@65
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@67
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@6a
    .line 184
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@6c
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@6e
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@71
    .line 185
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@73
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@75
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@78
    .line 186
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@7a
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@7c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@7f
    .line 187
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@81
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@83
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@86
    .line 188
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@88
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@8a
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@8d
    .line 189
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@8f
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@92
    .line 190
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@94
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@97
    .line 167
    return-void
.end method

.method public writeMap(Lcom/android/dex/Dex$Section;)V
    .locals 7
    .param p1, "out"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 194
    const/4 v0, 0x0

    #@2
    .line 195
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@4
    array-length v5, v4

    #@5
    move v2, v3

    #@6
    :goto_0
    if-ge v2, v5, :cond_1

    #@8
    aget-object v1, v4, v2

    #@a
    .line 196
    .local v1, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 201
    .end local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@18
    .line 202
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@1a
    array-length v5, v4

    #@1b
    move v2, v3

    #@1c
    :goto_1
    if-ge v2, v5, :cond_3

    #@1e
    aget-object v1, v4, v2

    #@20
    .line 203
    .restart local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 204
    iget-short v6, v1, Lcom/android/dex/TableOfContents$Section;->type:S

    #@28
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@2b
    .line 205
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@2e
    .line 206
    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@30
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@33
    .line 207
    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@35
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@38
    .line 202
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 193
    .end local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_3
    return-void
.end method

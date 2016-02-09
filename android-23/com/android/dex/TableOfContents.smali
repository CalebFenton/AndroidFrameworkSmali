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
    .line 64
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
    .line 65
    const/16 v0, 0x14

    #@105
    new-array v0, v0, [B

    #@107
    iput-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@109
    .line 64
    return-void
.end method

.method private getSection(S)Lcom/android/dex/TableOfContents$Section;
    .locals 5
    .param p1, "type"    # S

    #@0
    .prologue
    .line 158
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
    .line 159
    .local v0, "section":Lcom/android/dex/TableOfContents$Section;
    iget-short v4, v0, Lcom/android/dex/TableOfContents$Section;->type:S

    #@a
    if-ne v4, p1, :cond_0

    #@c
    .line 160
    return-object v0

    #@d
    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 163
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
    .locals 7
    .param p1, "headerIn"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    const/16 v4, 0x8

    #@2
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    #@5
    move-result-object v3

    #@6
    .line 76
    .local v3, "magic":[B
    invoke-static {v3}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    #@9
    move-result v0

    #@a
    .line 78
    .local v0, "apiTarget":I
    const/16 v4, 0xd

    #@c
    if-eq v0, v4, :cond_0

    #@e
    .line 79
    new-instance v4, Lcom/android/dex/DexException;

    #@10
    new-instance v5, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v6, "Unexpected magic: "

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v5

    #@28
    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v4

    #@2c
    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@2f
    move-result v4

    #@30
    iput v4, p0, Lcom/android/dex/TableOfContents;->checksum:I

    #@32
    .line 83
    const/16 v4, 0x14

    #@34
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    #@37
    move-result-object v4

    #@38
    iput-object v4, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@3a
    .line 84
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3d
    move-result v4

    #@3e
    iput v4, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    #@40
    .line 85
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@43
    move-result v2

    #@44
    .line 86
    .local v2, "headerSize":I
    const/16 v4, 0x70

    #@46
    if-eq v2, v4, :cond_1

    #@48
    .line 87
    new-instance v4, Lcom/android/dex/DexException;

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Unexpected header: 0x"

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v5

    #@62
    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@65
    throw v4

    #@66
    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@69
    move-result v1

    #@6a
    .line 90
    .local v1, "endianTag":I
    const v4, 0x12345678

    #@6d
    if-eq v1, v4, :cond_2

    #@6f
    .line 91
    new-instance v4, Lcom/android/dex/DexException;

    #@71
    new-instance v5, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v6, "Unexpected endian tag: 0x"

    #@79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v5

    #@89
    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v4

    #@8d
    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@90
    move-result v4

    #@91
    iput v4, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    #@93
    .line 94
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@96
    move-result v4

    #@97
    iput v4, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    #@99
    .line 95
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@9b
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@9e
    move-result v5

    #@9f
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@a1
    .line 96
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@a3
    iget v4, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@a5
    if-nez v4, :cond_3

    #@a7
    .line 97
    new-instance v4, Lcom/android/dex/DexException;

    #@a9
    const-string/jumbo v5, "Cannot merge dex files that do not contain a map"

    #@ac
    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@af
    throw v4

    #@b0
    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@b2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@b5
    move-result v5

    #@b6
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@b8
    .line 100
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@ba
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@bd
    move-result v5

    #@be
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@c0
    .line 101
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@c2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@c5
    move-result v5

    #@c6
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@c8
    .line 102
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@ca
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@cd
    move-result v5

    #@ce
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@d0
    .line 103
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@d2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@d5
    move-result v5

    #@d6
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@d8
    .line 104
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@da
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@dd
    move-result v5

    #@de
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@e0
    .line 105
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@e2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@e5
    move-result v5

    #@e6
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@e8
    .line 106
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@ea
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@ed
    move-result v5

    #@ee
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f0
    .line 107
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@f2
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@f5
    move-result v5

    #@f6
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@f8
    .line 108
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@fa
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@fd
    move-result v5

    #@fe
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@100
    .line 109
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@102
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@105
    move-result v5

    #@106
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@108
    .line 110
    iget-object v4, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@10a
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@10d
    move-result v5

    #@10e
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@110
    .line 111
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@113
    move-result v4

    #@114
    iput v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@116
    .line 112
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@119
    move-result v4

    #@11a
    iput v4, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@11c
    .line 74
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
    .line 116
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@3
    move-result v1

    #@4
    .line 117
    .local v1, "mapSize":I
    const/4 v3, 0x0

    #@5
    .line 118
    .local v3, "previous":Lcom/android/dex/TableOfContents$Section;
    const/4 v0, 0x0

    #@6
    .end local v3    # "previous":Lcom/android/dex/TableOfContents$Section;
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@8
    .line 119
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    #@b
    move-result v6

    #@c
    .line 120
    .local v6, "type":S
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    #@f
    .line 121
    invoke-direct {p0, v6}, Lcom/android/dex/TableOfContents;->getSection(S)Lcom/android/dex/TableOfContents$Section;

    #@12
    move-result-object v4

    #@13
    .line 122
    .local v4, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@16
    move-result v5

    #@17
    .line 123
    .local v5, "size":I
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    #@1a
    move-result v2

    #@1b
    .line 125
    .local v2, "offset":I
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@1d
    if-eqz v7, :cond_1

    #@1f
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@21
    if-eq v7, v5, :cond_1

    #@23
    .line 127
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
    .line 126
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
    .line 130
    :cond_2
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    #@4c
    .line 131
    iput v2, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@4e
    .line 133
    if-eqz v3, :cond_3

    #@50
    iget v7, v3, Lcom/android/dex/TableOfContents$Section;->off:I

    #@52
    iget v8, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    #@54
    if-le v7, v8, :cond_3

    #@56
    .line 134
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
    .line 137
    :cond_3
    move-object v3, v4

    #@7c
    .line 118
    .local v3, "previous":Lcom/android/dex/TableOfContents$Section;
    add-int/lit8 v0, v0, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 139
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
    .line 115
    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 6

    #@0
    .prologue
    .line 143
    iget v3, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@2
    iget v4, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@4
    add-int v0, v3, v4

    #@6
    .line 144
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
    .line 145
    iget-object v3, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    #@f
    aget-object v2, v3, v1

    #@11
    .line 146
    .local v2, "section":Lcom/android/dex/TableOfContents$Section;
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@13
    const/4 v4, -0x1

    #@14
    if-ne v3, v4, :cond_0

    #@16
    .line 144
    :goto_1
    add-int/lit8 v1, v1, -0x1

    #@18
    goto :goto_0

    #@19
    .line 149
    :cond_0
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@1b
    if-le v3, v0, :cond_1

    #@1d
    .line 150
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
    .line 152
    :cond_1
    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@39
    sub-int v3, v0, v3

    #@3b
    iput v3, v2, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    #@3d
    .line 153
    iget v0, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@3f
    goto :goto_1

    #@40
    .line 142
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
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readHeader(Lcom/android/dex/Dex$Section;)V

    #@8
    .line 70
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
    .line 71
    invoke-virtual {p0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    #@16
    .line 68
    return-void
.end method

.method public writeHeader(Lcom/android/dex/Dex$Section;)V
    .locals 2
    .param p1, "out"    # Lcom/android/dex/Dex$Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    const/16 v0, 0xd

    #@2
    invoke-static {v0}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "UTF-8"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    #@10
    .line 168
    iget v0, p0, Lcom/android/dex/TableOfContents;->checksum:I

    #@12
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@15
    .line 169
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    #@17
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    #@1a
    .line 170
    iget v0, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    #@1c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@1f
    .line 171
    const/16 v0, 0x70

    #@21
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@24
    .line 172
    const v0, 0x12345678

    #@27
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@2a
    .line 173
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    #@2c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@2f
    .line 174
    iget v0, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    #@31
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@34
    .line 175
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    #@36
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@38
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@3b
    .line 176
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@3d
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@3f
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@42
    .line 177
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    #@44
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@46
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@49
    .line 178
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@4b
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@4d
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@50
    .line 179
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@52
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@54
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@57
    .line 180
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@59
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@5b
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@5e
    .line 181
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@60
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@62
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@65
    .line 182
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@67
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@69
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@6c
    .line 183
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@6e
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@70
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@73
    .line 184
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@75
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@77
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@7a
    .line 185
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@7c
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@7e
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@81
    .line 186
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@83
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    #@85
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@88
    .line 187
    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@8a
    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    #@8c
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@8f
    .line 188
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    #@91
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@94
    .line 189
    iget v0, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    #@96
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@99
    .line 166
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
    .line 193
    const/4 v0, 0x0

    #@2
    .line 194
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
    .line 195
    .local v1, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 196
    add-int/lit8 v0, v0, 0x1

    #@12
    .line 194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 200
    .end local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@18
    .line 201
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
    .line 202
    .restart local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_2

    #@26
    .line 203
    iget-short v6, v1, Lcom/android/dex/TableOfContents$Section;->type:S

    #@28
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@2b
    .line 204
    invoke-virtual {p1, v3}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    #@2e
    .line 205
    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@30
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@33
    .line 206
    iget v6, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@35
    invoke-virtual {p1, v6}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@38
    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_1

    #@3b
    .line 192
    .end local v1    # "section":Lcom/android/dex/TableOfContents$Section;
    :cond_3
    return-void
.end method

.class public final Lcom/android/dex/Dex;
.super Ljava/lang/Object;
.source "Dex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/Dex$Section;,
        Lcom/android/dex/Dex$StringTable;,
        Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;,
        Lcom/android/dex/Dex$TypeIndexToDescriptorTable;,
        Lcom/android/dex/Dex$ProtoIdTable;,
        Lcom/android/dex/Dex$FieldIdTable;,
        Lcom/android/dex/Dex$MethodIdTable;,
        Lcom/android/dex/Dex$ClassDefIterator;,
        Lcom/android/dex/Dex$ClassDefIterable;
    }
.end annotation


# static fields
.field private static final CHECKSUM_OFFSET:I = 0x8

.field private static final CHECKSUM_SIZE:I = 0x4

.field static final EMPTY_SHORT_ARRAY:[S

.field private static final SIGNATURE_OFFSET:I = 0xc

.field private static final SIGNATURE_SIZE:I = 0x14


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final fieldIds:Lcom/android/dex/Dex$FieldIdTable;

.field private final methodIds:Lcom/android/dex/Dex$MethodIdTable;

.field private nextSectionStart:I

.field private final protoIds:Lcom/android/dex/Dex$ProtoIdTable;

.field private final strings:Lcom/android/dex/Dex$StringTable;

.field private final tableOfContents:Lcom/android/dex/TableOfContents;

.field private final typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

.field private final typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;


# direct methods
.method static synthetic -get0(Lcom/android/dex/Dex;)Lcom/android/dex/Dex$StringTable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dex/Dex;)Lcom/android/dex/TableOfContents;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(II)V
    .locals 0
    .param p0, "index"    # I
    .param p1, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [S

    #@3
    sput-object v0, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    #@5
    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v0, Lcom/android/dex/TableOfContents;

    #@6
    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    .line 62
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@e
    .line 63
    new-instance v0, Lcom/android/dex/Dex$StringTable;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    #@13
    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@15
    .line 64
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@17
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    #@1a
    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@1c
    .line 65
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    #@21
    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@23
    .line 66
    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    #@25
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    #@28
    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    #@2a
    .line 67
    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    #@2c
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    #@2f
    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@31
    .line 68
    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    #@33
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    #@36
    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@38
    .line 88
    new-array v0, p1, [B

    #@3a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@40
    .line 89
    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@42
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@44
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@47
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v2, Lcom/android/dex/TableOfContents;

    #@6
    invoke-direct {v2}, Lcom/android/dex/TableOfContents;-><init>()V

    #@9
    iput-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    .line 62
    const/4 v2, 0x0

    #@c
    iput v2, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@e
    .line 63
    new-instance v2, Lcom/android/dex/Dex$StringTable;

    #@10
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    #@13
    iput-object v2, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@15
    .line 64
    new-instance v2, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@17
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    #@1a
    iput-object v2, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@1c
    .line 65
    new-instance v2, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@1e
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    #@21
    iput-object v2, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@23
    .line 66
    new-instance v2, Lcom/android/dex/Dex$ProtoIdTable;

    #@25
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    #@28
    iput-object v2, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    #@2a
    .line 67
    new-instance v2, Lcom/android/dex/Dex$FieldIdTable;

    #@2c
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    #@2f
    iput-object v2, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@31
    .line 68
    new-instance v2, Lcom/android/dex/Dex$MethodIdTable;

    #@33
    invoke-direct {v2, p0, v3}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    #@36
    iput-object v2, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@38
    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v2}, Lcom/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_1

    #@42
    .line 104
    new-instance v1, Ljava/util/zip/ZipFile;

    #@44
    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@47
    .line 105
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    const-string/jumbo v2, "classes.dex"

    #@4a
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@4d
    move-result-object v0

    #@4e
    .line 106
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    #@50
    .line 107
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@53
    move-result-object v2

    #@54
    invoke-direct {p0, v2}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    #@57
    .line 108
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    #@5a
    .line 102
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_0
    return-void

    #@5b
    .line 110
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    new-instance v2, Lcom/android/dex/DexException;

    #@5d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "Expected classes.dex in "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v3

    #@71
    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2

    #@75
    .line 112
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, ".dex"

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_2

    #@82
    .line 113
    new-instance v2, Ljava/io/FileInputStream;

    #@84
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@87
    invoke-direct {p0, v2}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    #@8a
    goto :goto_0

    #@8b
    .line 115
    :cond_2
    new-instance v2, Lcom/android/dex/DexException;

    #@8d
    new-instance v3, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string/jumbo v4, "unknown output extension: "

    #@95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v3

    #@a1
    invoke-direct {v2, v3}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v0, Lcom/android/dex/TableOfContents;

    #@6
    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    .line 62
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@e
    .line 63
    new-instance v0, Lcom/android/dex/Dex$StringTable;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    #@13
    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@15
    .line 64
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@17
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    #@1a
    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@1c
    .line 65
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    #@21
    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@23
    .line 66
    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    #@25
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    #@28
    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    #@2a
    .line 67
    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    #@2c
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    #@2f
    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@31
    .line 68
    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    #@33
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    #@36
    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@38
    .line 96
    invoke-direct {p0, p1}, Lcom/android/dex/Dex;->loadFrom(Ljava/io/InputStream;)V

    #@3b
    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    new-instance v0, Lcom/android/dex/TableOfContents;

    #@6
    invoke-direct {v0}, Lcom/android/dex/TableOfContents;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    .line 62
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@e
    .line 63
    new-instance v0, Lcom/android/dex/Dex$StringTable;

    #@10
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$StringTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$StringTable;)V

    #@13
    iput-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@15
    .line 64
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@17
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;)V

    #@1a
    iput-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@1c
    .line 65
    new-instance v0, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@1e
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$TypeIndexToDescriptorTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$TypeIndexToDescriptorTable;)V

    #@21
    iput-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@23
    .line 66
    new-instance v0, Lcom/android/dex/Dex$ProtoIdTable;

    #@25
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ProtoIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ProtoIdTable;)V

    #@28
    iput-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    #@2a
    .line 67
    new-instance v0, Lcom/android/dex/Dex$FieldIdTable;

    #@2c
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$FieldIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$FieldIdTable;)V

    #@2f
    iput-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@31
    .line 68
    new-instance v0, Lcom/android/dex/Dex$MethodIdTable;

    #@33
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$MethodIdTable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$MethodIdTable;)V

    #@36
    iput-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@38
    .line 79
    iput-object p1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@3a
    .line 80
    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@3c
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@41
    .line 81
    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@43
    invoke-virtual {v0, p0}, Lcom/android/dex/TableOfContents;->readFrom(Lcom/android/dex/Dex;)V

    #@46
    .line 78
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    #@7
    .line 74
    return-void
.end method

.method private static checkBounds(II)V
    .locals 3
    .param p0, "index"    # I
    .param p1, "length"    # I

    #@0
    .prologue
    .line 160
    if-ltz p0, :cond_0

    #@2
    if-lt p0, p1, :cond_1

    #@4
    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "index:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", length="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 159
    :cond_1
    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;)Lcom/android/dex/Dex;
    .locals 4
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5
    .line 129
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@9
    move-result v2

    #@a
    const/16 v3, 0x64

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 130
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@12
    move-result v2

    #@13
    const/16 v3, 0x65

    #@15
    if-ne v2, v3, :cond_0

    #@17
    .line 131
    const/4 v2, 0x2

    #@18
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@1b
    move-result v2

    #@1c
    const/16 v3, 0x79

    #@1e
    if-ne v2, v3, :cond_0

    #@20
    .line 132
    const/4 v2, 0x3

    #@21
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@24
    move-result v2

    #@25
    const/16 v3, 0xa

    #@27
    if-ne v2, v3, :cond_0

    #@29
    .line 133
    const/16 v2, 0x8

    #@2b
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@2e
    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@31
    move-result v1

    #@32
    .line 135
    .local v1, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@35
    move-result v0

    #@36
    .line 136
    .local v0, "length":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@39
    .line 137
    add-int v2, v1, v0

    #@3b
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@3e
    .line 138
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@41
    move-result-object p0

    #@42
    .line 141
    .end local v0    # "length":I
    .end local v1    # "offset":I
    :cond_0
    new-instance v2, Lcom/android/dex/Dex;

    #@44
    invoke-direct {v2, p0}, Lcom/android/dex/Dex;-><init>(Ljava/nio/ByteBuffer;)V

    #@47
    return-object v2
.end method

.method private loadFrom(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 146
    .local v1, "bytesOut":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    #@7
    new-array v0, v3, [B

    #@9
    .line 149
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    #@c
    move-result v2

    #@d
    .local v2, "count":I
    const/4 v3, -0x1

    #@e
    if-eq v2, v3, :cond_0

    #@10
    .line 150
    const/4 v3, 0x0

    #@11
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@14
    goto :goto_0

    #@15
    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    #@18
    .line 154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@22
    .line 155
    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@24
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@26
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@29
    .line 156
    iget-object v3, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2b
    invoke-virtual {v3, p0}, Lcom/android/dex/TableOfContents;->readFrom(Lcom/android/dex/Dex;)V

    #@2e
    .line 144
    return-void
.end method


# virtual methods
.method public annotationDirectoryOffsetFromClassDefIndex(I)I
    .locals 3
    .param p1, "classDefIndex"    # I

    #@0
    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 476
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x20

    #@11
    add-int v0, v1, v2

    #@13
    .line 477
    .local v0, "position":I
    add-int/lit8 v0, v0, 0x4

    #@15
    .line 478
    add-int/lit8 v0, v0, 0x4

    #@17
    .line 479
    add-int/lit8 v0, v0, 0x4

    #@19
    .line 480
    add-int/lit8 v0, v0, 0x4

    #@1b
    .line 481
    add-int/lit8 v0, v0, 0x4

    #@1d
    .line 482
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@1f
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@22
    move-result v1

    #@23
    return v1
.end method

.method public appendSection(ILjava/lang/String;)Lcom/android/dex/Dex$Section;
    .locals 5
    .param p1, "maxByteCount"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    and-int/lit8 v3, p1, 0x3

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 200
    new-instance v3, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v4, "Not four byte aligned!"

    #@9
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 202
    :cond_0
    iget v3, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@f
    add-int v0, v3, p1

    #@11
    .line 203
    .local v0, "limit":I
    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@13
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@16
    move-result-object v2

    #@17
    .line 204
    .local v2, "sectionData":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@19
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1c
    .line 205
    iget v3, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@21
    .line 206
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@24
    .line 207
    new-instance v1, Lcom/android/dex/Dex$Section;

    #@26
    const/4 v3, 0x0

    #@27
    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$Section;)V

    #@2a
    .line 208
    .local v1, "result":Lcom/android/dex/Dex$Section;
    iput v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@2c
    .line 209
    return-object v1
.end method

.method public classDefs()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/dex/ClassDef;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 256
    new-instance v0, Lcom/android/dex/Dex$ClassDefIterable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/dex/Dex$ClassDefIterable;-><init>(Lcom/android/dex/Dex;Lcom/android/dex/Dex$ClassDefIterable;)V

    #@6
    return-object v0
.end method

.method public computeChecksum()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 310
    new-instance v0, Ljava/util/zip/Adler32;

    #@3
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    #@6
    .line 311
    .local v0, "adler32":Ljava/util/zip/Adler32;
    const/16 v4, 0x2000

    #@8
    new-array v1, v4, [B

    #@a
    .line 312
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@f
    move-result-object v3

    #@10
    .line 313
    .local v3, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@13
    move-result v4

    #@14
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    .line 314
    const/16 v4, 0xc

    #@19
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1c
    .line 315
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 316
    array-length v4, v1

    #@23
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    #@26
    move-result v5

    #@27
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@2a
    move-result v2

    #@2b
    .line 317
    .local v2, "count":I
    invoke-virtual {v3, v1, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@2e
    .line 318
    invoke-virtual {v0, v1, v6, v2}, Ljava/util/zip/Adler32;->update([BII)V

    #@31
    goto :goto_0

    #@32
    .line 320
    .end local v2    # "count":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    #@35
    move-result-wide v4

    #@36
    long-to-int v4, v4

    #@37
    return v4
.end method

.method public computeSignature()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 290
    :try_start_0
    const-string/jumbo v5, "SHA-1"

    #@4
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v3

    #@8
    .line 294
    .local v3, "digest":Ljava/security/MessageDigest;
    const/16 v5, 0x2000

    #@a
    new-array v0, v5, [B

    #@c
    .line 295
    .local v0, "buffer":[B
    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@e
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@11
    move-result-object v2

    #@12
    .line 296
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    #@15
    move-result v5

    #@16
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@19
    .line 297
    const/16 v5, 0x20

    #@1b
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1e
    .line 298
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_0

    #@24
    .line 299
    array-length v5, v0

    #@25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v6

    #@29
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v1

    #@2d
    .line 300
    .local v1, "count":I
    invoke-virtual {v2, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@30
    .line 301
    invoke-virtual {v3, v0, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    #@33
    goto :goto_0

    #@34
    .line 291
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    #@35
    .line 292
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/AssertionError;

    #@37
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@3a
    throw v5

    #@3b
    .line 303
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "data":Ljava/nio/ByteBuffer;
    .restart local v3    # "digest":Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    #@3e
    move-result-object v5

    #@3f
    return-object v5
.end method

.method public declaringClassIndexFromMethodIndex(I)I
    .locals 3
    .param p1, "methodIndex"    # I

    #@0
    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 390
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x8

    #@11
    add-int v0, v1, v2

    #@13
    .line 391
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@18
    move-result v1

    #@19
    const v2, 0xffff

    #@1c
    and-int/2addr v1, v2

    #@1d
    return v1
.end method

.method public descriptorIndexFromTypeIndex(I)I
    .locals 3
    .param p1, "typeIndex"    # I

    #@0
    .prologue
    .line 457
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 458
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x4

    #@11
    add-int v0, v1, v2

    #@13
    .line 459
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public fieldIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/FieldId;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@2
    return-object v0
.end method

.method public findClassDefIndexFromTypeIndex(I)I
    .locals 3
    .param p1, "typeIndex"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 361
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@3
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    #@5
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@7
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@a
    .line 362
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@c
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@e
    invoke-virtual {v1}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 363
    return v2

    #@15
    .line 365
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@18
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@1a
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@1c
    if-ge v0, v1, :cond_2

    #@1e
    .line 366
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->typeIndexFromClassDefIndex(I)I

    #@21
    move-result v1

    #@22
    if-ne v1, p1, :cond_1

    #@24
    .line 367
    return v0

    #@25
    .line 365
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 370
    :cond_2
    return v2
.end method

.method public findFieldIndex(Lcom/android/dex/FieldId;)I
    .locals 1
    .param p1, "fieldId"    # Lcom/android/dex/FieldId;

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/dex/Dex;->fieldIds:Lcom/android/dex/Dex$FieldIdTable;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public findMethodIndex(Lcom/android/dex/MethodId;)I
    .locals 1
    .param p1, "methodId"    # Lcom/android/dex/MethodId;

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public findStringIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public findTypeIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@2
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBytes()[B
    .locals 3

    #@0
    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 225
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@9
    move-result v2

    #@a
    new-array v1, v2, [B

    #@c
    .line 226
    .local v1, "result":[B
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@10
    .line 227
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@13
    .line 228
    return-object v1
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNextSectionStart()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Lcom/android/dex/Dex;->nextSectionStart:I

    #@2
    return v0
.end method

.method public getTableOfContents()Lcom/android/dex/TableOfContents;
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    return-object v0
.end method

.method public interfaceTypeIndicesFromClassDefIndex(I)[S
    .locals 8
    .param p1, "classDefIndex"    # I

    #@0
    .prologue
    .line 490
    iget-object v5, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v5, v5, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v5, v5, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v5}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 491
    iget-object v5, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v5, v5, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v5, v5, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v6, p1, 0x20

    #@11
    add-int v2, v5, v6

    #@13
    .line 492
    .local v2, "position":I
    add-int/lit8 v2, v2, 0x4

    #@15
    .line 493
    add-int/lit8 v2, v2, 0x4

    #@17
    .line 494
    add-int/lit8 v2, v2, 0x4

    #@19
    .line 495
    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@1b
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1e
    move-result v1

    #@1f
    .line 496
    .local v1, "interfacesOffset":I
    if-nez v1, :cond_0

    #@21
    .line 497
    sget-object v5, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    #@23
    return-object v5

    #@24
    .line 499
    :cond_0
    move v2, v1

    #@25
    .line 500
    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@2a
    move-result v3

    #@2b
    .line 501
    .local v3, "size":I
    if-gtz v3, :cond_1

    #@2d
    .line 502
    new-instance v5, Ljava/lang/AssertionError;

    #@2f
    new-instance v6, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v7, "Unexpected interfaces list size: "

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@46
    throw v5

    #@47
    .line 504
    :cond_1
    add-int/lit8 v2, v2, 0x4

    #@49
    .line 505
    new-array v4, v3, [S

    #@4b
    .line 506
    .local v4, "types":[S
    const/4 v0, 0x0

    #@4c
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@4e
    .line 507
    iget-object v5, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@50
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@53
    move-result v5

    #@54
    aput-short v5, v4, v0

    #@56
    .line 508
    add-int/lit8 v2, v2, 0x2

    #@58
    .line 506
    add-int/lit8 v0, v0, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 510
    :cond_2
    return-object v4
.end method

.method public methodIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/MethodId;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/dex/Dex;->methodIds:Lcom/android/dex/Dex$MethodIdTable;

    #@2
    return-object v0
.end method

.method public nameIndexFromFieldIndex(I)I
    .locals 3
    .param p1, "fieldIndex"    # I

    #@0
    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 338
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x8

    #@11
    add-int v0, v1, v2

    #@13
    .line 339
    .local v0, "position":I
    add-int/lit8 v0, v0, 0x2

    #@15
    .line 340
    add-int/lit8 v0, v0, 0x2

    #@17
    .line 341
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public nameIndexFromMethodIndex(I)I
    .locals 3
    .param p1, "methodIndex"    # I

    #@0
    .prologue
    .line 399
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 400
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x8

    #@11
    add-int v0, v1, v2

    #@13
    .line 401
    .local v0, "position":I
    add-int/lit8 v0, v0, 0x2

    #@15
    .line 402
    add-int/lit8 v0, v0, 0x2

    #@17
    .line 403
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@19
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method public open(I)Lcom/android/dex/Dex$Section;
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    .line 187
    if-ltz p1, :cond_0

    #@2
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@7
    move-result v1

    #@8
    if-lt p1, v1, :cond_1

    #@a
    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "position="

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 189
    const-string/jumbo v3, " length="

    #@1f
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 189
    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    #@28
    move-result v3

    #@29
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3a
    move-result-object v0

    #@3b
    .line 192
    .local v0, "sectionData":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@40
    .line 193
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@43
    .line 194
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@48
    move-result v1

    #@49
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@4c
    .line 195
    new-instance v1, Lcom/android/dex/Dex$Section;

    #@4e
    const-string/jumbo v2, "section"

    #@51
    const/4 v3, 0x0

    #@52
    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/dex/Dex$Section;-><init>(Lcom/android/dex/Dex;Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/android/dex/Dex$Section;)V

    #@55
    return-object v1
.end method

.method public parameterTypeIndicesFromMethodIndex(I)[S
    .locals 9
    .param p1, "methodIndex"    # I

    #@0
    .prologue
    .line 411
    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v6, v6, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v6}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 412
    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v6, v6, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v7, p1, 0x8

    #@11
    add-int v2, v6, v7

    #@13
    .line 413
    .local v2, "position":I
    add-int/lit8 v2, v2, 0x2

    #@15
    .line 414
    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@1a
    move-result v6

    #@1b
    const v7, 0xffff

    #@1e
    and-int v3, v6, v7

    #@20
    .line 415
    .local v3, "protoIndex":I
    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@22
    iget-object v6, v6, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@24
    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->size:I

    #@26
    invoke-static {v3, v6}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@29
    .line 416
    iget-object v6, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2b
    iget-object v6, v6, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@2d
    iget v6, v6, Lcom/android/dex/TableOfContents$Section;->off:I

    #@2f
    mul-int/lit8 v7, v3, 0xc

    #@31
    add-int v2, v6, v7

    #@33
    .line 417
    add-int/lit8 v2, v2, 0x4

    #@35
    .line 418
    add-int/lit8 v2, v2, 0x4

    #@37
    .line 419
    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@39
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3c
    move-result v1

    #@3d
    .line 420
    .local v1, "parametersOffset":I
    if-nez v1, :cond_0

    #@3f
    .line 421
    sget-object v6, Lcom/android/dex/Dex;->EMPTY_SHORT_ARRAY:[S

    #@41
    return-object v6

    #@42
    .line 423
    :cond_0
    move v2, v1

    #@43
    .line 424
    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@45
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@48
    move-result v4

    #@49
    .line 425
    .local v4, "size":I
    if-gtz v4, :cond_1

    #@4b
    .line 426
    new-instance v6, Ljava/lang/AssertionError;

    #@4d
    new-instance v7, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v8, "Unexpected parameter type list size: "

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@64
    throw v6

    #@65
    .line 428
    :cond_1
    add-int/lit8 v2, v2, 0x4

    #@67
    .line 429
    new-array v5, v4, [S

    #@69
    .line 430
    .local v5, "types":[S
    const/4 v0, 0x0

    #@6a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@6c
    .line 431
    iget-object v6, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@6e
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@71
    move-result v6

    #@72
    aput-short v6, v5, v0

    #@74
    .line 432
    add-int/lit8 v2, v2, 0x2

    #@76
    .line 430
    add-int/lit8 v0, v0, 0x1

    #@78
    goto :goto_0

    #@79
    .line 434
    :cond_2
    return-object v5
.end method

.method public protoIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dex/ProtoId;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/dex/Dex;->protoIds:Lcom/android/dex/Dex$ProtoIdTable;

    #@2
    return-object v0
.end method

.method public readClassData(Lcom/android/dex/ClassDef;)Lcom/android/dex/ClassData;
    .locals 3
    .param p1, "classDef"    # Lcom/android/dex/ClassDef;

    #@0
    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/android/dex/ClassDef;->getClassDataOffset()I

    #@3
    move-result v0

    #@4
    .line 268
    .local v0, "offset":I
    if-nez v0, :cond_0

    #@6
    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "offset == 0"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/dex/Dex$Section;->-wrap0(Lcom/android/dex/Dex$Section;)Lcom/android/dex/ClassData;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public readCode(Lcom/android/dex/ClassData$Method;)Lcom/android/dex/Code;
    .locals 3
    .param p1, "method"    # Lcom/android/dex/ClassData$Method;

    #@0
    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/dex/ClassData$Method;->getCodeOffset()I

    #@3
    move-result v0

    #@4
    .line 276
    .local v0, "offset":I
    if-nez v0, :cond_0

    #@6
    .line 277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "offset == 0"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/android/dex/Dex$Section;->-wrap1(Lcom/android/dex/Dex$Section;)Lcom/android/dex/Code;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public readTypeList(I)Lcom/android/dex/TypeList;
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 260
    if-nez p1, :cond_0

    #@2
    .line 261
    sget-object v0, Lcom/android/dex/TypeList;->EMPTY:Lcom/android/dex/TypeList;

    #@4
    return-object v0

    #@5
    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/dex/Dex$Section;->readTypeList()Lcom/android/dex/TypeList;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public returnTypeIndexFromMethodIndex(I)I
    .locals 4
    .param p1, "methodIndex"    # I

    #@0
    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v2, v2, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v2}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 443
    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v2, v2, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v3, p1, 0x8

    #@11
    add-int v0, v2, v3

    #@13
    .line 444
    .local v0, "position":I
    add-int/lit8 v0, v0, 0x2

    #@15
    .line 445
    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@1a
    move-result v2

    #@1b
    const v3, 0xffff

    #@1e
    and-int v1, v2, v3

    #@20
    .line 446
    .local v1, "protoIndex":I
    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@22
    iget-object v2, v2, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@24
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    #@26
    invoke-static {v1, v2}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@29
    .line 447
    iget-object v2, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2b
    iget-object v2, v2, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    #@2d
    iget v2, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    #@2f
    mul-int/lit8 v3, v1, 0xc

    #@31
    add-int v0, v2, v3

    #@33
    .line 448
    add-int/lit8 v0, v0, 0x4

    #@35
    .line 449
    iget-object v2, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@37
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@3a
    move-result v2

    #@3b
    return v2
.end method

.method public strings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/dex/Dex;->strings:Lcom/android/dex/Dex$StringTable;

    #@2
    return-object v0
.end method

.method public typeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/dex/Dex;->typeIds:Lcom/android/dex/Dex$TypeIndexToDescriptorIndexTable;

    #@2
    return-object v0
.end method

.method public typeIndexFromClassDefIndex(I)I
    .locals 3
    .param p1, "classDefIndex"    # I

    #@0
    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 467
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x20

    #@11
    add-int v0, v1, v2

    #@13
    .line 468
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public typeIndexFromFieldIndex(I)I
    .locals 3
    .param p1, "fieldIndex"    # I

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@2
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@4
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    #@6
    invoke-static {p1, v1}, Lcom/android/dex/Dex;->checkBounds(II)V

    #@9
    .line 379
    iget-object v1, p0, Lcom/android/dex/Dex;->tableOfContents:Lcom/android/dex/TableOfContents;

    #@b
    iget-object v1, v1, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    #@d
    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    #@f
    mul-int/lit8 v2, p1, 0x8

    #@11
    add-int v0, v1, v2

    #@13
    .line 380
    .local v0, "position":I
    add-int/lit8 v0, v0, 0x2

    #@15
    .line 381
    iget-object v1, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@17
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@1a
    move-result v1

    #@1b
    const v2, 0xffff

    #@1e
    and-int/2addr v1, v2

    #@1f
    return v1
.end method

.method public typeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/dex/Dex;->typeNames:Lcom/android/dex/Dex$TypeIndexToDescriptorTable;

    #@2
    return-object v0
.end method

.method public writeHashes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 328
    const/16 v0, 0xc

    #@2
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0}, Lcom/android/dex/Dex;->computeSignature()[B

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->write([B)V

    #@d
    .line 329
    const/16 v0, 0x8

    #@f
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0}, Lcom/android/dex/Dex;->computeChecksum()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    #@1a
    .line 327
    return-void
.end method

.method public writeTo(Ljava/io/File;)V
    .locals 1
    .param p1, "dexOut"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 178
    .local v0, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lcom/android/dex/Dex;->writeTo(Ljava/io/OutputStream;)V

    #@8
    .line 179
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@b
    .line 176
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 166
    const/16 v3, 0x2000

    #@3
    new-array v0, v3, [B

    #@5
    .line 167
    .local v0, "buffer":[B
    iget-object v3, p0, Lcom/android/dex/Dex;->data:Ljava/nio/ByteBuffer;

    #@7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@a
    move-result-object v2

    #@b
    .line 168
    .local v2, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@e
    .line 169
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 170
    array-length v3, v0

    #@15
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@1c
    move-result v1

    #@1d
    .line 171
    .local v1, "count":I
    invoke-virtual {v2, v0, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@20
    .line 172
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    #@23
    goto :goto_0

    #@24
    .line 165
    .end local v1    # "count":I
    :cond_0
    return-void
.end method

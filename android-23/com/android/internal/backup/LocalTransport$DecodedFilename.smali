.class Lcom/android/internal/backup/LocalTransport$DecodedFilename;
.super Ljava/lang/Object;
.source "LocalTransport.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/LocalTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DecodedFilename"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    #@0
    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 558
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    #@5
    .line 559
    new-instance v0, Ljava/lang/String;

    #@7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    #@12
    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    #@14
    .line 557
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I
    .locals 2
    .param p1, "other"    # Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    #@2
    iget-object v1, p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 563
    check-cast p1, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->compareTo(Lcom/android/internal/backup/LocalTransport$DecodedFilename;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

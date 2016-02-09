.class public Lcom/android/org/bouncycastle/util/io/pem/PemObject;
.super Ljava/lang/Object;
.source "PemObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;


# instance fields
.field private content:[B

.field private headers:Ljava/util/List;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    #@b
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/util/List;
    .param p3, "content"    # [B

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    #@5
    .line 40
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    #@b
    .line 41
    iput-object p3, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->content:[B

    #@d
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # [B

    #@0
    .prologue
    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->EMPTY_LIST:Ljava/util/List;

    #@2
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    #@5
    .line 25
    return-void
.end method


# virtual methods
.method public generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    return-object p0
.end method

.method public getContent()[B
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->content:[B

    #@2
    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->headers:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

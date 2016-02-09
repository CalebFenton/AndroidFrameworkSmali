.class abstract Landroid/icu/impl/ICUBinary$DataFile;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DataFile"
.end annotation


# instance fields
.field protected final itemPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 202
    iput-object p1, p0, Landroid/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    #@5
    .line 201
    return-void
.end method


# virtual methods
.method abstract addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

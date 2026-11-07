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
.field protected final greylist-max-o itemPath:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "item"    # Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Landroid/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    .line 211
    return-void
.end method


# virtual methods
.method abstract greylist-max-o addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract greylist-max-o getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$DataFile;->itemPath:Ljava/lang/String;

    return-object v0
.end method

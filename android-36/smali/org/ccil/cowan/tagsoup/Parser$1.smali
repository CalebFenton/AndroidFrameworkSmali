.class Lorg/ccil/cowan/tagsoup/Parser$1;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/AutoDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ccil/cowan/tagsoup/Parser;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor greylist <init>(Lorg/ccil/cowan/tagsoup/Parser;)V
    .registers 2
    .param p1, "this$0"    # Lorg/ccil/cowan/tagsoup/Parser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .registers 3
    .param p1, "i"    # Ljava/io/InputStream;

    .line 464
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

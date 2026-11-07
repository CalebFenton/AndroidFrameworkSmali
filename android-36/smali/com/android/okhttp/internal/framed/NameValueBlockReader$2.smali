.class Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/framed/NameValueBlockReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/NameValueBlockReader$2;->this$0:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api inflate([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 69
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_16

    .line 70
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 71
    sget-object v0, Lcom/android/okhttp/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result p0

    return p0

    :cond_16
    return v0
.end method

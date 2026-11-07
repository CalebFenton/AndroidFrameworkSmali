.class Landroid/net/connectivity/com/android/internal/util/FileRotator$1;
.super Ljava/lang/Object;
.source "FileRotator.java"

# interfaces
.implements Landroid/net/connectivity/com/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/com/android/internal/util/FileRotator;->combineActive(Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$reader:Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;

.field final synthetic blacklist val$writer:Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/android/internal/util/FileRotator;Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/connectivity/com/android/internal/util/FileRotator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p2, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;->val$reader:Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;

    iput-object p3, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;->val$writer:Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;->val$reader:Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V

    .line 207
    return-void
.end method

.method public blacklist reset()V
    .registers 1

    .line 202
    return-void
.end method

.method public blacklist shouldWrite()Z
    .registers 2

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/net/connectivity/com/android/internal/util/FileRotator$1;->val$writer:Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 217
    return-void
.end method

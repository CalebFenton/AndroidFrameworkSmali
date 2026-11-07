.class Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportPackageCommand"
.end annotation


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .registers 3
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 5
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterFactory;->addPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :catch_b
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/filterfw/io/GraphIOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

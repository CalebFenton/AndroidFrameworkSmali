.class Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;
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
    name = "AddLibraryCommand"
.end annotation


# instance fields
.field private blacklist mLibraryName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V
    .registers 3
    .param p2, "libraryName"    # Ljava/lang/String;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .registers 3
    .param p1, "reader"    # Landroid/filterfw/io/TextGraphReader;

    .line 78
    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;->mLibraryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FilterFactory;->addFilterLibrary(Ljava/lang/String;)V

    .line 79
    return-void
.end method

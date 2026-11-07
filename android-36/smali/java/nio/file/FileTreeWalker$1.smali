.class synthetic Ljava/nio/file/FileTreeWalker$1;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$nio$file$FileVisitOption:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 181
    invoke-static {}, Ljava/nio/file/FileVisitOption;->values()[Ljava/nio/file/FileVisitOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/nio/file/FileTreeWalker$1;->$SwitchMap$java$nio$file$FileVisitOption:[I

    :try_start_9
    sget-object v0, Ljava/nio/file/FileTreeWalker$1;->$SwitchMap$java$nio$file$FileVisitOption:[I

    sget-object v1, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-virtual {v1}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    return-void
.end method

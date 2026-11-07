.class synthetic Ljava/nio/file/Files$3;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$nio$file$FileTreeWalker$EventType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2665
    invoke-static {}, Ljava/nio/file/FileTreeWalker$EventType;->values()[Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    :try_start_9
    sget-object v0, Ljava/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Ljava/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Ljava/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method

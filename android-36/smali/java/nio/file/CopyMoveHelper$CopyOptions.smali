.class Ljava/nio/file/CopyMoveHelper$CopyOptions;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/CopyMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyOptions"
.end annotation


# instance fields
.field blacklist copyAttributes:Z

.field blacklist followLinks:Z

.field blacklist replaceExisting:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 45
    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    .line 48
    return-void
.end method

.method static varargs blacklist parse([Ljava/nio/file/CopyOption;)Ljava/nio/file/CopyMoveHelper$CopyOptions;
    .registers 8
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .line 51
    new-instance v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;

    invoke-direct {v0}, Ljava/nio/file/CopyMoveHelper$CopyOptions;-><init>()V

    .line 52
    .local v0, "result":Ljava/nio/file/CopyMoveHelper$CopyOptions;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_4c

    aget-object v4, p0, v3

    .line 53
    .local v4, "option":Ljava/nio/file/CopyOption;
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_14

    .line 54
    iput-boolean v6, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 55
    goto :goto_22

    .line 57
    :cond_14
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v4, v5, :cond_1b

    .line 58
    iput-boolean v2, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    .line 59
    goto :goto_22

    .line 61
    :cond_1b
    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_25

    .line 62
    iput-boolean v6, v0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    .line 63
    nop

    .line 52
    .end local v4    # "option":Ljava/nio/file/CopyOption;
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 65
    .restart local v4    # "option":Ljava/nio/file/CopyOption;
    :cond_25
    if-nez v4, :cond_2d

    .line 66
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 67
    :cond_2d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a recognized copy option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v4    # "option":Ljava/nio/file/CopyOption;
    :cond_4c
    return-object v0
.end method

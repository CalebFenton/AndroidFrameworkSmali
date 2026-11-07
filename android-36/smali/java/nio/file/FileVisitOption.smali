.class public final enum Ljava/nio/file/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/FileVisitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/FileVisitOption;

.field public static final enum whitelist test-api FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;


# direct methods
.method private static synthetic blacklist $values()[Ljava/nio/file/FileVisitOption;
    .registers 1

    .line 36
    sget-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    filled-new-array {v0}, [Ljava/nio/file/FileVisitOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Ljava/nio/file/FileVisitOption;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    .line 36
    invoke-static {}, Ljava/nio/file/FileVisitOption;->$values()[Ljava/nio/file/FileVisitOption;

    move-result-object v0

    sput-object v0, Ljava/nio/file/FileVisitOption;->$VALUES:[Ljava/nio/file/FileVisitOption;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/FileVisitOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 36
    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileVisitOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/FileVisitOption;
    .registers 1

    .line 36
    sget-object v0, Ljava/nio/file/FileVisitOption;->$VALUES:[Ljava/nio/file/FileVisitOption;

    invoke-virtual {v0}, [Ljava/nio/file/FileVisitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/FileVisitOption;

    return-object v0
.end method

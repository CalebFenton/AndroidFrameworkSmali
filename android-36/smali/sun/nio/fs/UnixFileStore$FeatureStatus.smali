.class final enum Lsun/nio/fs/UnixFileStore$FeatureStatus;
.super Ljava/lang/Enum;
.source "UnixFileStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FeatureStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/nio/fs/UnixFileStore$FeatureStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum blacklist NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum blacklist PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

.field public static final enum blacklist UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;


# direct methods
.method private static synthetic blacklist $values()[Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 3

    .line 215
    sget-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    sget-object v1, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    sget-object v2, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    filled-new-array {v0, v1, v2}, [Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 216
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string v1, "PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 217
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 218
    new-instance v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/UnixFileStore$FeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    .line 215
    invoke-static {}, Lsun/nio/fs/UnixFileStore$FeatureStatus;->$values()[Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->$VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

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

    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
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

    .line 215
    const-class v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v0
.end method

.method public static blacklist values()[Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .registers 1

    .line 215
    sget-object v0, Lsun/nio/fs/UnixFileStore$FeatureStatus;->$VALUES:[Lsun/nio/fs/UnixFileStore$FeatureStatus;

    invoke-virtual {v0}, [Lsun/nio/fs/UnixFileStore$FeatureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v0
.end method

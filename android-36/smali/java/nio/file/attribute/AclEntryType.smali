.class public final enum Ljava/nio/file/attribute/AclEntryType;
.super Ljava/lang/Enum;
.source "AclEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/nio/file/attribute/AclEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api ALARM:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api ALLOW:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api AUDIT:Ljava/nio/file/attribute/AclEntryType;

.field public static final enum whitelist test-api DENY:Ljava/nio/file/attribute/AclEntryType;


# direct methods
.method private static synthetic blacklist $values()[Ljava/nio/file/attribute/AclEntryType;
    .registers 4

    .line 34
    sget-object v0, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    sget-object v1, Ljava/nio/file/attribute/AclEntryType;->DENY:Ljava/nio/file/attribute/AclEntryType;

    sget-object v2, Ljava/nio/file/attribute/AclEntryType;->AUDIT:Ljava/nio/file/attribute/AclEntryType;

    sget-object v3, Ljava/nio/file/attribute/AclEntryType;->ALARM:Ljava/nio/file/attribute/AclEntryType;

    filled-new-array {v0, v1, v2, v3}, [Ljava/nio/file/attribute/AclEntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 38
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    .line 43
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string v1, "DENY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->DENY:Ljava/nio/file/attribute/AclEntryType;

    .line 49
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string v1, "AUDIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->AUDIT:Ljava/nio/file/attribute/AclEntryType;

    .line 55
    new-instance v0, Ljava/nio/file/attribute/AclEntryType;

    const-string v1, "ALARM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->ALARM:Ljava/nio/file/attribute/AclEntryType;

    .line 34
    invoke-static {}, Ljava/nio/file/attribute/AclEntryType;->$values()[Ljava/nio/file/attribute/AclEntryType;

    move-result-object v0

    sput-object v0, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryType;
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

    .line 34
    const-class v0, Ljava/nio/file/attribute/AclEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/nio/file/attribute/AclEntryType;
    .registers 1

    .line 34
    sget-object v0, Ljava/nio/file/attribute/AclEntryType;->$VALUES:[Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, [Ljava/nio/file/attribute/AclEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method

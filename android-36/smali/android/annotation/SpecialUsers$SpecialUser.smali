.class public final enum Landroid/annotation/SpecialUsers$SpecialUser;
.super Ljava/lang/Enum;
.source "SpecialUsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/SpecialUsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/SpecialUsers$SpecialUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist ALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist DISALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist DISALLOW_USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist DISALLOW_USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist DISALLOW_USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist DISALLOW_USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist UNSPECIFIED:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

.field public static final enum blacklist USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;


# direct methods
.method private static synthetic blacklist $values()[Landroid/annotation/SpecialUsers$SpecialUser;
    .registers 11

    .line 60
    sget-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v1, Landroid/annotation/SpecialUsers$SpecialUser;->USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v2, Landroid/annotation/SpecialUsers$SpecialUser;->USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v3, Landroid/annotation/SpecialUsers$SpecialUser;->USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v4, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v5, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v6, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v7, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v8, Landroid/annotation/SpecialUsers$SpecialUser;->ALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v9, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

    sget-object v10, Landroid/annotation/SpecialUsers$SpecialUser;->UNSPECIFIED:Landroid/annotation/SpecialUsers$SpecialUser;

    filled-new-array/range {v0 .. v10}, [Landroid/annotation/SpecialUsers$SpecialUser;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "USER_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "USER_CURRENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

    .line 64
    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "USER_CURRENT_OR_SELF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "USER_NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;

    .line 66
    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "DISALLOW_USER_ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_ALL:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "DISALLOW_USER_CURRENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_CURRENT:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "DISALLOW_USER_CURRENT_OR_SELF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_CURRENT_OR_SELF:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "DISALLOW_USER_NULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_USER_NULL:Landroid/annotation/SpecialUsers$SpecialUser;

    .line 68
    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "ALLOW_EVERY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->ALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "DISALLOW_EVERY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;

    .line 70
    new-instance v0, Landroid/annotation/SpecialUsers$SpecialUser;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/annotation/SpecialUsers$SpecialUser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->UNSPECIFIED:Landroid/annotation/SpecialUsers$SpecialUser;

    .line 60
    invoke-static {}, Landroid/annotation/SpecialUsers$SpecialUser;->$values()[Landroid/annotation/SpecialUsers$SpecialUser;

    move-result-object v0

    sput-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->$VALUES:[Landroid/annotation/SpecialUsers$SpecialUser;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/annotation/SpecialUsers$SpecialUser;
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

    .line 60
    const-class v0, Landroid/annotation/SpecialUsers$SpecialUser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/SpecialUsers$SpecialUser;

    return-object v0
.end method

.method public static blacklist values()[Landroid/annotation/SpecialUsers$SpecialUser;
    .registers 1

    .line 60
    sget-object v0, Landroid/annotation/SpecialUsers$SpecialUser;->$VALUES:[Landroid/annotation/SpecialUsers$SpecialUser;

    invoke-virtual {v0}, [Landroid/annotation/SpecialUsers$SpecialUser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/SpecialUsers$SpecialUser;

    return-object v0
.end method

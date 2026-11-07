.class public enum Landroid/annotation/RestrictedForEnvironment$Environment;
.super Ljava/lang/Enum;
.source "RestrictedForEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/RestrictedForEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Landroid/annotation/RestrictedForEnvironment$Environment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/RestrictedForEnvironment$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/annotation/RestrictedForEnvironment$Environment;

.field public static final enum blacklist SDK_SANDBOX:Landroid/annotation/RestrictedForEnvironment$Environment;


# direct methods
.method private static synthetic blacklist $values()[Landroid/annotation/RestrictedForEnvironment$Environment;
    .registers 1

    .line 58
    sget-object v0, Landroid/annotation/RestrictedForEnvironment$Environment;->SDK_SANDBOX:Landroid/annotation/RestrictedForEnvironment$Environment;

    filled-new-array {v0}, [Landroid/annotation/RestrictedForEnvironment$Environment;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 62
    new-instance v0, Landroid/annotation/RestrictedForEnvironment$Environment$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SDK_SANDBOX"

    invoke-direct {v0, v3, v1, v2}, Landroid/annotation/RestrictedForEnvironment$Environment$1;-><init>(Ljava/lang/String;ILandroid/annotation/RestrictedForEnvironment-IA;)V

    sput-object v0, Landroid/annotation/RestrictedForEnvironment$Environment;->SDK_SANDBOX:Landroid/annotation/RestrictedForEnvironment$Environment;

    .line 58
    invoke-static {}, Landroid/annotation/RestrictedForEnvironment$Environment;->$values()[Landroid/annotation/RestrictedForEnvironment$Environment;

    move-result-object v0

    sput-object v0, Landroid/annotation/RestrictedForEnvironment$Environment;->$VALUES:[Landroid/annotation/RestrictedForEnvironment$Environment;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/annotation/RestrictedForEnvironment-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/annotation/RestrictedForEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/annotation/RestrictedForEnvironment$Environment;
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

    .line 58
    const-class v0, Landroid/annotation/RestrictedForEnvironment$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/RestrictedForEnvironment$Environment;

    return-object v0
.end method

.method public static blacklist values()[Landroid/annotation/RestrictedForEnvironment$Environment;
    .registers 1

    .line 58
    sget-object v0, Landroid/annotation/RestrictedForEnvironment$Environment;->$VALUES:[Landroid/annotation/RestrictedForEnvironment$Environment;

    invoke-virtual {v0}, [Landroid/annotation/RestrictedForEnvironment$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/RestrictedForEnvironment$Environment;

    return-object v0
.end method

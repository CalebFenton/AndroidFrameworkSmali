.class public final enum Lcom/android/org/conscrypt/ct/LogStore$State;
.super Ljava/lang/Enum;
.source "LogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/LogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/conscrypt/ct/LogStore$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

.field public static final enum blacklist UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/conscrypt/ct/LogStore$State;
    .registers 6

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v1, Lcom/android/org/conscrypt/ct/LogStore$State;->NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v2, Lcom/android/org/conscrypt/ct/LogStore$State;->MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v3, Lcom/android/org/conscrypt/ct/LogStore$State;->LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v4, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    sget-object v5, Lcom/android/org/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    filled-new-array/range {v0 .. v5}, [Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->UNINITIALIZED:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 32
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->NOT_FOUND:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 33
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "MALFORMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->MALFORMED:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 34
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "LOADED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->LOADED:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 35
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "COMPLIANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 36
    new-instance v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    const-string v1, "NON_COMPLIANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/LogStore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lcom/android/org/conscrypt/ct/LogStore$State;

    .line 30
    invoke-static {}, Lcom/android/org/conscrypt/ct/LogStore$State;->$values()[Lcom/android/org/conscrypt/ct/LogStore$State;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->$VALUES:[Lcom/android/org/conscrypt/ct/LogStore$State;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/LogStore$State;
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

    .line 30
    const-class v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/conscrypt/ct/LogStore$State;
    .registers 1

    .line 30
    sget-object v0, Lcom/android/org/conscrypt/ct/LogStore$State;->$VALUES:[Lcom/android/org/conscrypt/ct/LogStore$State;

    invoke-virtual {v0}, [Lcom/android/org/conscrypt/ct/LogStore$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/conscrypt/ct/LogStore$State;

    return-object v0
.end method

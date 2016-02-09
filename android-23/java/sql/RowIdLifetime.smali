.class public final enum Ljava/sql/RowIdLifetime;
.super Ljava/lang/Enum;
.source "RowIdLifetime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/sql/RowIdLifetime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/sql/RowIdLifetime;

.field public static final enum ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

.field public static final enum ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

.field public static final enum ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

.field public static final enum ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

.field public static final enum ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 26
    new-instance v0, Ljava/sql/RowIdLifetime;

    #@7
    const-string/jumbo v1, "ROWID_UNSUPPORTED"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    #@f
    new-instance v0, Ljava/sql/RowIdLifetime;

    #@11
    const-string/jumbo v1, "ROWID_VALID_OTHER"

    #@14
    invoke-direct {v0, v1, v3}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    #@19
    new-instance v0, Ljava/sql/RowIdLifetime;

    #@1b
    const-string/jumbo v1, "ROWID_VALID_SESSION"

    #@1e
    invoke-direct {v0, v1, v4}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    #@23
    new-instance v0, Ljava/sql/RowIdLifetime;

    #@25
    const-string/jumbo v1, "ROWID_VALID_TRANSACTION"

    #@28
    invoke-direct {v0, v1, v5}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    #@2d
    .line 27
    new-instance v0, Ljava/sql/RowIdLifetime;

    #@2f
    const-string/jumbo v1, "ROWID_VALID_FOREVER"

    #@32
    invoke-direct {v0, v1, v6}, Ljava/sql/RowIdLifetime;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Ljava/sql/RowIdLifetime;->ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

    #@37
    .line 25
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Ljava/sql/RowIdLifetime;

    #@3a
    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_VALID_OTHER:Ljava/sql/RowIdLifetime;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_VALID_SESSION:Ljava/sql/RowIdLifetime;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_VALID_TRANSACTION:Ljava/sql/RowIdLifetime;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Ljava/sql/RowIdLifetime;->ROWID_VALID_FOREVER:Ljava/sql/RowIdLifetime;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/RowIdLifetime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Ljava/sql/RowIdLifetime;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/sql/RowIdLifetime;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/sql/RowIdLifetime;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Ljava/sql/RowIdLifetime;->$VALUES:[Ljava/sql/RowIdLifetime;

    #@2
    return-object v0
.end method

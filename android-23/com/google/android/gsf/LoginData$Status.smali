.class public final enum Lcom/google/android/gsf/LoginData$Status;
.super Ljava/lang/Enum;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/LoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/LoginData$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/LoginData$Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum CANCELLED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum DMAGENT:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

.field public static final enum SUCCESS:Lcom/google/android/gsf/LoginData$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 30
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@7
    const-string/jumbo v1, "SUCCESS"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    #@f
    .line 31
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@11
    const-string/jumbo v1, "ACCOUNT_DISABLED"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

    #@19
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@1b
    const-string/jumbo v1, "BAD_USERNAME"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@21
    .line 32
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

    #@23
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@25
    const-string/jumbo v1, "BAD_REQUEST"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 33
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    #@2d
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@2f
    const-string/jumbo v1, "LOGIN_FAIL"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@35
    .line 34
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    #@37
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@39
    const-string/jumbo v1, "SERVER_ERROR"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@40
    .line 35
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    #@42
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@44
    const-string/jumbo v1, "MISSING_APPS"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 36
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

    #@4d
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@4f
    const-string/jumbo v1, "NO_GMAIL"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@56
    .line 37
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    #@58
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@5a
    const-string/jumbo v1, "NETWORK_ERROR"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@62
    .line 38
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    #@64
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@66
    const-string/jumbo v1, "CAPTCHA"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 39
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    #@70
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@72
    const-string/jumbo v1, "CANCELLED"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 40
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    #@7c
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@7e
    const-string/jumbo v1, "DELETED_GMAIL"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@86
    .line 41
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    #@88
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@8a
    const-string/jumbo v1, "OAUTH_MIGRATION_REQUIRED"

    #@8d
    const/16 v2, 0xc

    #@8f
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@92
    .line 42
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    #@94
    new-instance v0, Lcom/google/android/gsf/LoginData$Status;

    #@96
    const-string/jumbo v1, "DMAGENT"

    #@99
    const/16 v2, 0xd

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/LoginData$Status;-><init>(Ljava/lang/String;I)V

    #@9e
    .line 43
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    #@a0
    .line 29
    const/16 v0, 0xe

    #@a2
    new-array v0, v0, [Lcom/google/android/gsf/LoginData$Status;

    #@a4
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    #@a6
    aput-object v1, v0, v3

    #@a8
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/LoginData$Status;

    #@aa
    aput-object v1, v0, v4

    #@ac
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->BAD_USERNAME:Lcom/google/android/gsf/LoginData$Status;

    #@ae
    aput-object v1, v0, v5

    #@b0
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    #@b2
    aput-object v1, v0, v6

    #@b4
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    #@b6
    aput-object v1, v0, v7

    #@b8
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->SERVER_ERROR:Lcom/google/android/gsf/LoginData$Status;

    #@ba
    const/4 v2, 0x5

    #@bb
    aput-object v1, v0, v2

    #@bd
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->MISSING_APPS:Lcom/google/android/gsf/LoginData$Status;

    #@bf
    const/4 v2, 0x6

    #@c0
    aput-object v1, v0, v2

    #@c2
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    #@c4
    const/4 v2, 0x7

    #@c5
    aput-object v1, v0, v2

    #@c7
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->NETWORK_ERROR:Lcom/google/android/gsf/LoginData$Status;

    #@c9
    const/16 v2, 0x8

    #@cb
    aput-object v1, v0, v2

    #@cd
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->CAPTCHA:Lcom/google/android/gsf/LoginData$Status;

    #@cf
    const/16 v2, 0x9

    #@d1
    aput-object v1, v0, v2

    #@d3
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    #@d5
    const/16 v2, 0xa

    #@d7
    aput-object v1, v0, v2

    #@d9
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->DELETED_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    #@db
    const/16 v2, 0xb

    #@dd
    aput-object v1, v0, v2

    #@df
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->OAUTH_MIGRATION_REQUIRED:Lcom/google/android/gsf/LoginData$Status;

    #@e1
    const/16 v2, 0xc

    #@e3
    aput-object v1, v0, v2

    #@e5
    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->DMAGENT:Lcom/google/android/gsf/LoginData$Status;

    #@e7
    const/16 v2, 0xd

    #@e9
    aput-object v1, v0, v2

    #@eb
    sput-object v0, Lcom/google/android/gsf/LoginData$Status;->$VALUES:[Lcom/google/android/gsf/LoginData$Status;

    #@ed
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Lcom/google/android/gsf/LoginData$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gsf/LoginData$Status;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/LoginData$Status;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->$VALUES:[Lcom/google/android/gsf/LoginData$Status;

    #@2
    return-object v0
.end method

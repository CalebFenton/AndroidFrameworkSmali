.class final enum Lcom/android/commands/settings/SettingsCmd$CommandVerb;
.super Ljava/lang/Enum;
.source "SettingsCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/settings/SettingsCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CommandVerb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/commands/settings/SettingsCmd$CommandVerb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

.field public static final enum UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;


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
    .line 40
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@7
    const-string/jumbo v1, "UNSPECIFIED"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@f
    .line 41
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@11
    const-string/jumbo v1, "GET"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@19
    .line 42
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@1b
    const-string/jumbo v1, "PUT"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@23
    .line 43
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@25
    const-string/jumbo v1, "DELETE"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@2d
    .line 44
    new-instance v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@2f
    const-string/jumbo v1, "LIST"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/commands/settings/SettingsCmd$CommandVerb;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@37
    .line 39
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@3a
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->UNSPECIFIED:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->GET:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->PUT:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->DELETE:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->LIST:Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->$VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    const-class v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/commands/settings/SettingsCmd$CommandVerb;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/commands/settings/SettingsCmd$CommandVerb;->$VALUES:[Lcom/android/commands/settings/SettingsCmd$CommandVerb;

    #@2
    return-object v0
.end method

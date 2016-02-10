.class public final enum Landroid/com/google/android/gtalkservice/Presence$Show;
.super Ljava/lang/Enum;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/com/google/android/gtalkservice/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Show"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/com/google/android/gtalkservice/Presence$Show;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/com/google/android/gtalkservice/Presence$Show;

.field public static final enum AVAILABLE:Landroid/com/google/android/gtalkservice/Presence$Show;

.field public static final enum AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

.field public static final enum DND:Landroid/com/google/android/gtalkservice/Presence$Show;

.field public static final enum EXTENDED_AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

.field public static final enum NONE:Landroid/com/google/android/gtalkservice/Presence$Show;


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
    .line 48
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@7
    const-string/jumbo v1, "NONE"

    #@a
    invoke-direct {v0, v1, v2}, Landroid/com/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->NONE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@f
    .line 49
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@11
    const-string/jumbo v1, "AWAY"

    #@14
    invoke-direct {v0, v1, v3}, Landroid/com/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@19
    .line 50
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@1b
    const-string/jumbo v1, "EXTENDED_AWAY"

    #@1e
    invoke-direct {v0, v1, v4}, Landroid/com/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@23
    .line 51
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@25
    const-string/jumbo v1, "DND"

    #@28
    invoke-direct {v0, v1, v5}, Landroid/com/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->DND:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2d
    .line 52
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2f
    const-string/jumbo v1, "AVAILABLE"

    #@32
    invoke-direct {v0, v1, v6}, Landroid/com/google/android/gtalkservice/Presence$Show;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->AVAILABLE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@37
    .line 47
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Landroid/com/google/android/gtalkservice/Presence$Show;

    #@3a
    sget-object v1, Landroid/com/google/android/gtalkservice/Presence$Show;->NONE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Landroid/com/google/android/gtalkservice/Presence$Show;->AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Landroid/com/google/android/gtalkservice/Presence$Show;->EXTENDED_AWAY:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Landroid/com/google/android/gtalkservice/Presence$Show;->DND:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Landroid/com/google/android/gtalkservice/Presence$Show;->AVAILABLE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->$VALUES:[Landroid/com/google/android/gtalkservice/Presence$Show;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/com/google/android/gtalkservice/Presence$Show;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-class v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/com/google/android/gtalkservice/Presence$Show;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->$VALUES:[Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2
    return-object v0
.end method

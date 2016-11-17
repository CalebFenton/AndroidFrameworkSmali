.class public final enum Landroid/database/CursorJoiner$Result;
.super Ljava/lang/Enum;
.source "CursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/CursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/database/CursorJoiner$Result;

.field public static final enum BOTH:Landroid/database/CursorJoiner$Result;

.field public static final enum LEFT:Landroid/database/CursorJoiner$Result;

.field public static final enum RIGHT:Landroid/database/CursorJoiner$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 59
    new-instance v0, Landroid/database/CursorJoiner$Result;

    #@5
    const-string/jumbo v1, "RIGHT"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    #@b
    .line 60
    sput-object v0, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    #@d
    .line 61
    new-instance v0, Landroid/database/CursorJoiner$Result;

    #@f
    const-string/jumbo v1, "LEFT"

    #@12
    invoke-direct {v0, v1, v3}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    #@15
    .line 62
    sput-object v0, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    #@17
    .line 63
    new-instance v0, Landroid/database/CursorJoiner$Result;

    #@19
    const-string/jumbo v1, "BOTH"

    #@1c
    invoke-direct {v0, v1, v4}, Landroid/database/CursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 64
    sput-object v0, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    #@21
    .line 58
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/database/CursorJoiner$Result;

    #@24
    sget-object v1, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/database/CursorJoiner$Result;->$VALUES:[Landroid/database/CursorJoiner$Result;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/database/CursorJoiner$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    const-class v0, Landroid/database/CursorJoiner$Result;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/database/CursorJoiner$Result;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/database/CursorJoiner$Result;
    .locals 1

    #@0
    .prologue
    .line 58
    sget-object v0, Landroid/database/CursorJoiner$Result;->$VALUES:[Landroid/database/CursorJoiner$Result;

    #@2
    return-object v0
.end method

.class final enum Ljava/io/File$PathStatus;
.super Ljava/lang/Enum;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PathStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/io/File$PathStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/io/File$PathStatus;

.field public static final enum CHECKED:Ljava/io/File$PathStatus;

.field public static final enum INVALID:Ljava/io/File$PathStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 155
    new-instance v0, Ljava/io/File$PathStatus;

    #@4
    const-string/jumbo v1, "INVALID"

    #@7
    invoke-direct {v0, v1, v2}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    #@c
    new-instance v0, Ljava/io/File$PathStatus;

    #@e
    const-string/jumbo v1, "CHECKED"

    #@11
    invoke-direct {v0, v1, v3}, Ljava/io/File$PathStatus;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Ljava/io/File$PathStatus;

    #@19
    sget-object v1, Ljava/io/File$PathStatus;->INVALID:Ljava/io/File$PathStatus;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Ljava/io/File$PathStatus;->CHECKED:Ljava/io/File$PathStatus;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/io/File$PathStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    const-class v0, Ljava/io/File$PathStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/io/File$PathStatus;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/io/File$PathStatus;
    .locals 1

    #@0
    .prologue
    .line 155
    sget-object v0, Ljava/io/File$PathStatus;->$VALUES:[Ljava/io/File$PathStatus;

    #@2
    return-object v0
.end method

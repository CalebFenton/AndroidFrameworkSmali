.class public final enum Landroid/util/Xml$Encoding;
.super Ljava/lang/Enum;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/Xml$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/Xml$Encoding;

.field public static final enum ISO_8859_1:Landroid/util/Xml$Encoding;

.field public static final enum US_ASCII:Landroid/util/Xml$Encoding;

.field public static final enum UTF_16:Landroid/util/Xml$Encoding;

.field public static final enum UTF_8:Landroid/util/Xml$Encoding;


# instance fields
.field final expatName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 131
    new-instance v0, Landroid/util/Xml$Encoding;

    #@6
    const-string/jumbo v1, "US_ASCII"

    #@9
    const-string/jumbo v2, "US-ASCII"

    #@c
    invoke-direct {v0, v1, v3, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    sput-object v0, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    #@11
    .line 132
    new-instance v0, Landroid/util/Xml$Encoding;

    #@13
    const-string/jumbo v1, "UTF_8"

    #@16
    const-string/jumbo v2, "UTF-8"

    #@19
    invoke-direct {v0, v1, v4, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    sput-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    #@1e
    .line 133
    new-instance v0, Landroid/util/Xml$Encoding;

    #@20
    const-string/jumbo v1, "UTF_16"

    #@23
    const-string/jumbo v2, "UTF-16"

    #@26
    invoke-direct {v0, v1, v5, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    sput-object v0, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    #@2b
    .line 134
    new-instance v0, Landroid/util/Xml$Encoding;

    #@2d
    const-string/jumbo v1, "ISO_8859_1"

    #@30
    const-string/jumbo v2, "ISO-8859-1"

    #@33
    invoke-direct {v0, v1, v6, v2}, Landroid/util/Xml$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    sput-object v0, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    #@38
    .line 129
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Landroid/util/Xml$Encoding;

    #@3b
    sget-object v1, Landroid/util/Xml$Encoding;->US_ASCII:Landroid/util/Xml$Encoding;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_16:Landroid/util/Xml$Encoding;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "expatName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 139
    iput-object p3, p0, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    #@5
    .line 138
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    const-class v0, Landroid/util/Xml$Encoding;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/Xml$Encoding;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/util/Xml$Encoding;
    .locals 1

    #@0
    .prologue
    .line 129
    sget-object v0, Landroid/util/Xml$Encoding;->$VALUES:[Landroid/util/Xml$Encoding;

    #@2
    return-object v0
.end method

.class public Landroid/provider/UserDictionary;
.super Ljava/lang/Object;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/UserDictionary$Words;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "user_dictionary"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final FREQUENCY_MAX:I = 0xff

.field private static final FREQUENCY_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "content://user_dictionary"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 40
    sput-object v0, Landroid/provider/UserDictionary;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

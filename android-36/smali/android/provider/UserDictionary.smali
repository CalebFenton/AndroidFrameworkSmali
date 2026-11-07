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
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "user_dictionary"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final greylist-max-o FREQUENCY_MAX:I = 0xff

.field private static final greylist-max-o FREQUENCY_MIN:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    nop

    .line 44
    const-string v0, "content://user_dictionary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/UserDictionary;->CONTENT_URI:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

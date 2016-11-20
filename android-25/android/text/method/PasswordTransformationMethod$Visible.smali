.class Landroid/text/method/PasswordTransformationMethod$Visible;
.super Landroid/os/Handler;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Landroid/text/style/UpdateLayout;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Visible"
.end annotation


# instance fields
.field private mText:Landroid/text/Spannable;

.field private mTransformer:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static synthetic -get0(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V
    .locals 4
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "ptm"    # Landroid/text/method/PasswordTransformationMethod;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    #@5
    .line 241
    iput-object p2, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    #@7
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@a
    move-result-wide v0

    #@b
    const-wide/16 v2, 0x5dc

    #@d
    add-long/2addr v0, v2

    #@e
    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$Visible;->postAtTime(Ljava/lang/Runnable;J)Z

    #@11
    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    #@2
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@5
    .line 245
    return-void
.end method

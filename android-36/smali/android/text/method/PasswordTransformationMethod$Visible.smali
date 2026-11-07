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
.field private greylist-max-o mText:Landroid/text/Spannable;

.field private greylist-max-o mTransformer:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTransformer(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;
    .registers 1

    iget-object p0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V
    .registers 7
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "ptm"    # Landroid/text/method/PasswordTransformationMethod;

    .line 242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 243
    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    .line 244
    iput-object p2, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$Visible;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$Visible;->mText:Landroid/text/Spannable;

    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.class Landroid/widget/TextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextClock;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    .line 160
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 161
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 165
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    .line 166
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 167
    return-void
.end method

.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 171
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$mchooseFormat(Landroid/widget/TextClock;)V

    .line 172
    iget-object v0, p0, Landroid/widget/TextClock$FormatChangeObserver;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    .line 173
    return-void
.end method

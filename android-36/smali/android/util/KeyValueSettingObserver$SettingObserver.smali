.class Landroid/util/KeyValueSettingObserver$SettingObserver;
.super Landroid/database/ContentObserver;
.source "KeyValueSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/KeyValueSettingObserver;


# direct methods
.method private constructor blacklist <init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;)V
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

    .line 87
    iput-object p1, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    .line 88
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;Landroid/util/KeyValueSettingObserver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/util/KeyValueSettingObserver$SettingObserver;-><init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 93
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    invoke-static {v0}, Landroid/util/KeyValueSettingObserver;->-$$Nest$msetParserValue(Landroid/util/KeyValueSettingObserver;)V

    .line 94
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver$SettingObserver;->this$0:Landroid/util/KeyValueSettingObserver;

    invoke-static {v1}, Landroid/util/KeyValueSettingObserver;->-$$Nest$fgetmParser(Landroid/util/KeyValueSettingObserver;)Landroid/util/KeyValueListParser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueSettingObserver;->update(Landroid/util/KeyValueListParser;)V

    .line 95
    return-void
.end method

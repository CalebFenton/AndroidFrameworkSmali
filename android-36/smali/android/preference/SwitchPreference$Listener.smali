.class Landroid/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SwitchPreference;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SwitchPreference;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 59
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 62
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 63
    return-void

    .line 66
    :cond_12
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    return-void
.end method

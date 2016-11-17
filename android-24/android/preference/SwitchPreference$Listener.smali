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
.field final synthetic this$0:Landroid/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SwitchPreference;

    #@0
    .prologue
    .line 46
    iput-object p1, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference$Listener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SwitchPreference;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;)V

    #@3
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    #@2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 52
    if-eqz p2, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@12
    .line 53
    return-void

    #@13
    .line 52
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 56
    :cond_1
    iget-object v0, p0, Landroid/preference/SwitchPreference$Listener;->this$0:Landroid/preference/SwitchPreference;

    #@17
    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    #@1a
    .line 48
    return-void
.end method

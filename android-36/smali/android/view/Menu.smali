.class public interface abstract Landroid/view/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# static fields
.field public static final whitelist CATEGORY_ALTERNATIVE:I = 0x40000

.field public static final whitelist CATEGORY_CONTAINER:I = 0x10000

.field public static final greylist-max-o CATEGORY_MASK:I = -0x10000

.field public static final whitelist CATEGORY_SECONDARY:I = 0x30000

.field public static final greylist-max-o CATEGORY_SHIFT:I = 0x10

.field public static final whitelist CATEGORY_SYSTEM:I = 0x20000

.field public static final whitelist FIRST:I = 0x1

.field public static final whitelist FLAG_ALWAYS_PERFORM_CLOSE:I = 0x2

.field public static final whitelist FLAG_APPEND_TO_GROUP:I = 0x1

.field public static final whitelist FLAG_PERFORM_NO_CLOSE:I = 0x1

.field public static final whitelist NONE:I = 0x0

.field public static final whitelist SUPPORTED_MODIFIERS_MASK:I = 0x1100f

.field public static final greylist-max-o USER_MASK:I = 0xffff

.field public static final greylist-max-o USER_SHIFT:I


# virtual methods
.method public abstract whitelist add(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist add(IIII)Landroid/view/MenuItem;
.end method

.method public abstract whitelist add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.end method

.method public abstract whitelist addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
.end method

.method public abstract whitelist addSubMenu(I)Landroid/view/SubMenu;
.end method

.method public abstract whitelist addSubMenu(IIII)Landroid/view/SubMenu;
.end method

.method public abstract whitelist addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
.end method

.method public abstract whitelist addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.end method

.method public abstract whitelist clear()V
.end method

.method public abstract whitelist close()V
.end method

.method public abstract whitelist findItem(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist getItem(I)Landroid/view/MenuItem;
.end method

.method public abstract whitelist hasVisibleItems()Z
.end method

.method public abstract whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract whitelist performIdentifierAction(II)Z
.end method

.method public abstract whitelist performShortcut(ILandroid/view/KeyEvent;I)Z
.end method

.method public abstract whitelist removeGroup(I)V
.end method

.method public abstract whitelist removeItem(I)V
.end method

.method public abstract whitelist setGroupCheckable(IZZ)V
.end method

.method public whitelist setGroupDividerEnabled(Z)V
    .registers 2
    .param p1, "groupDividerEnabled"    # Z

    .line 468
    return-void
.end method

.method public abstract whitelist setGroupEnabled(IZ)V
.end method

.method public abstract whitelist setGroupVisible(IZ)V
.end method

.method public blacklist setOptionalIconsVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 366
    return-void
.end method

.method public abstract whitelist setQwertyMode(Z)V
.end method

.method public abstract whitelist size()I
.end method
